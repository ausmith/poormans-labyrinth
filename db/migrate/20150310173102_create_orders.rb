class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :shipping_address
      t.text :billing_address
      t.string :cc_num
      t.string :cc_exp
      t.string :cc_code

      t.timestamps null: false
    end
  end
end
