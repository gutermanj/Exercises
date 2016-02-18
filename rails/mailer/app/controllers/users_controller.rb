class UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.save
			WelcomeMailer.welcome_email(@user).deliver_now
			redirect_to user_path
		else

			render :new
		end
	end
	
end
