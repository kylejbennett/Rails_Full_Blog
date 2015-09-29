class PostsController < ApplicationController

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		if current_user

		else
			flash[:notice] = "Please login or sign up"
			redirect_to login_path
		end
	
	end

	def edit

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
