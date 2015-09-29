class HomeController < ApplicationController
	def index
	end

	def search

		user_id = params[:query]
		@user = User.find(user_id)
		unless User.where(id: params[:query].to_i).empty?
			@result = User.find(user_id)
		else
			flash[:alert] = "There are no users with that ID"
			redirect_to "/"
		end
	end

end
