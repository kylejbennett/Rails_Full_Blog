require 'rails_helper'

RSpec.describe User, :type => :model do
	let(:valid_attributes){     
  	@valid_attributes = {       
  		username: "name",   
		fname: "John",
		lname: "Smith",  
		email: "name@gmail.com",     
		password: "1234"     
  	}   
  }

	describe "is invalid without a " do
		let(:user){ User.new(valid_attributes) }

		it "name" do
	      user.password = nil       
	      expect(user).to be_invalid     
	  	end

	end

end