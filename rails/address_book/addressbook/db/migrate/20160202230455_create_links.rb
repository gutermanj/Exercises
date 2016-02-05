class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :origurl
      t.string :shorturl

      t.timestamps null: false
    end
  end
end
