class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show

	end

	def new

	end

	def edit

	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			flash[:notice] = "Your entry has been posted"
			redirect_to "/posts"
		else
			flash[:alert] = "There was a problem with your post"
			redirect_to "/posts/new"
		end
	end
end
