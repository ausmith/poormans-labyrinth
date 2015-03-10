class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
