class UsersController < ApplicationController

	def new

	end

	def show
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
	      redirect_to sign_in_path
	    else
	      redirect_to root_path
	    end
	end


	def user_params	
	    params.require(:user).permit(:email, :name, :password)
	end
	


	






end