class CreateSellerReviews < ActiveRecord::Migration
  def change
    create_table :seller_reviews do |t|
      t.integer :author_id
      t.integer :subject_id
      t.integer :product_id
      t.text :review_content
      t.integer :rating

      t.timestamps null: false
    end
  end
end
