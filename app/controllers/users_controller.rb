class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new

	end

	def edit

	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Your account has been created"
			session[:user_id] = @user.id
			redirect_to user_path @user
		else 
			flash[:alert] = "There was a problem creating your account"
			redirect_to new_user_path
		end
	end



end
