class PostsController < ApplicationController

	def index
		if current_user
			@user = User.find(current_user[:id])
		end
		@posts = Post.all.order('created_at DESC')
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		if current_user
			@user = User.find(current_user[:id])
		else
			flash[:notice] = "Please login or sign up"
			redirect_to login_path
		end
	
	end

	def edit

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		render posts_path
	end

	def create
		@post = Post.new(params[:post])
		@post.update(user_id: session[:user_id])
		if @post.save
			flash[:notice] = "Your entry has been posted"
			redirect_to "/posts"
		else
			flash[:alert] = "There was a problem with your post"
			redirect_to "/posts/new"
		end
	end
end
