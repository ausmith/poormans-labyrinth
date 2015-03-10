Rails.application.routes.draw do
  get '/index', to: 'index#index'
  root 'index#index'
end
