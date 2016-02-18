class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :email, presence: true, uniqueness: true

	has_many :products
	has_many :bids
	has_many :seller_reviews, class_name: :SellerReview, foreign_key: :user_id
	
end
