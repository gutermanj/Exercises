class SellerReview < ActiveRecord::Base
	belongs_to :subject, class_name: :User, foreign_key: :subject_key
	belongs_to :author, class_name: :User, foreign_key: :subject_key
	belongs_to :product

end
