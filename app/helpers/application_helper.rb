module ApplicationHelper

	def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil
	end

	def full_name
		if @user
			@user.fname + " " + @user.lname
		end
 	end
	
end
