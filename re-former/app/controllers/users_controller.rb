class UsersController < ApplicationController
	def new
	end

	def create
		# @user = User.new(user_params)
		@user = User.new(username: params[:username], 
												email: params[:email],
										 password: params[:password])
		if @user.valid?
			@user.save
			render inline:"<h1>ok</h1>"
		else
			render inline:"<h1>oh no</h1>"
		end
	end
	private
		# def user_params
		# 	params.require(:user).permit(:username, :password, :email)
		# end

end