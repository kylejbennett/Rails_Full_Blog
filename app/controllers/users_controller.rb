class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		if current_user
			@user = User.find(params[:id])
		else
			flash[:alert] = "Please login or sign up"
			redirect_to login_path
		end
	end

	def new

	end

	def edit

		@user = User.find(params[:id])

	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Your account has been created"
			session[:user_id] = @user.id
			redirect_to user_path @user
		else 
			flash[:alert] = "There was a problem creating your account"
			redirect_to new_user_path
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "Account updated"
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user.destroy
		session[:user_id] = nil if @user == current_user
		flash[:alert] = "You're account has been deleted"
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:username, :fname, :lname, :email, :password, :avatar)
	end


end
