class BidsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@bid = Bid.new
  	id = params[:product_id]
	@product = Product.find_by(id: id)

  end

  def create
  	@product = Product.find_by(id: params[:product_id])

  	@bid = @product.bids.new(
            :amount => params[:bid][:amount],
            :user_id => params[:bid][:user_id])

  	if @bid.save
  		redirect_to products_path
  	end
  end
end
