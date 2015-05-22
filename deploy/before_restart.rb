node[:deploy].each do |application, deploy|
  if ['poormans', 'poormans-labyrinth', 'poormans_labyrinth'].include?(application.to_s)
    release_dir  = ::File.expand_path(__FILE__).sub('deploy/before_restart.rb', '')
    Chef::Log.info("release_dir: #{release_dir}")
    user, group  = deploy[:user], deploy[:group]
    rails_env    = 'production'

    execute 'Ensuring bundle is installed without test and development gems, jobs = 2' do
      cwd release_dir
      command 'bundle install --without development test --jobs 2'
    end

    execute "rake db:create db:migrate: #{rails_env}" do
      cwd release_dir
      command "RAILS_ENV=#{rails_env} bundle exec rake db:create db:migrate db:seed"
    end
  end  
end
