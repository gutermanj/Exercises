class UsersController < ApplicationController
  def index
  	@users = User.all
  	render 'index'
  end

  	def new
  		@user = User.new
  			render 'new'
  	end

	def create
	 # Create new user from params[:user]
	user = User.new(user_params)

	user.save

	# Render user's attributes
	redirect_to users_path
	end

	def show
		@user = User.find_by(id: params[:id])
		@products = @user.products
	end

	def destroy
		user = User.find_by(id: params[:id])
		user.destroy
	end

	private

	def user_params
		params.require(:user).permit(:name, :email)
	end
end
