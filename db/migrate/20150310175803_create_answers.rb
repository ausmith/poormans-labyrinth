class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :key_name
      t.text :key_value
      t.string :key_type

      t.timestamps null: false
    end
  end
end
