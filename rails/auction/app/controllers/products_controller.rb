class ProductsController < ApplicationController
	def index
		@products = Product.all
		@bids = Bid.all
		render 'index'


	end

	def new
		
		@product = Product.new

    	@user = User.find_by(params[:id])
    	
	end


	def create
	  @product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => params[:product][:user_id],
			:bid => params[:product][:bid])

		@user = User.find_by(email: params[:email])

            unless @user.nil?
                @product = @user.products.new(
            :title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => params[:product][:user_id],
			:bid => params[:product][:bid])

                if @product.save
                    redirect_to action: 'index', controller: 'products'
                else
                    render 'new'
                end
            else
                render 'new'
            end
	end

	def show
		id = params[:id]
		@product = Product.find_by(id: id)

		render(:text => @product.attributes)
	end



	def destroy
		id = params[:id]

		product = Product.find_by(id: id)
		product.destroy
	end
end
