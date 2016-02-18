class SellerReviewsController < ApplicationController
	protect_from_forgery with: :null_session
	def create
		@author_id = 1
		@subject = User.find_by(id: params[:id])
		@product = Product.find_by(id: params[:id])
		
		@review = SellerReview.new(
			:author_id => @author_id,
			:subject_id => @subject.id,
			:product_id => @product.id,
			:review_content => params[:seller_review][:review_content],
			:rating => params[:seller_review][:rating])

		
			if @review.save
			redirect_to product_path(@product.id)
			else
			puts 'wrong'
			end

	end

	def destroy
	end

end
