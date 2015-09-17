class HomeController < ApplicationController
	def index
	end

	def search
		@result = User.find(params[:query])
		if @result
			puts @result.fname
		else
			flash[:alert] = "There are no users with that ID"
			redirect_to "/"
		end
	end

end
