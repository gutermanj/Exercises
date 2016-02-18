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

		@user = current_user

            unless current_user.nil?
                @product = @user.products.new(
            :title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => params[:product][current_user.id])

                if @product.save
                    redirect_to action: 'index', controller: 'products'
                else
                    render 'new'
                    flash[:message] = 'Something went wrong!'
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
