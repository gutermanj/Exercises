class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.datetime :deadline
      t.integer :user_id
      t.integer :bid

      t.timestamps null: false
    end
  end
end
