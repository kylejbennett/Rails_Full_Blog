require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	let(:valid_attributes) {     
		@valid_attributes = {
			username: "name",
			fname: "John",
			lname: "Smith",
			email: "fluffster@aol.com", 
			password: "testtest"} }

	let(:valid_session) { {user_id: 1} }

	describe "GET index" do
		it "returns http success" do
			get :index
			expect(response).to be_success
		end
	end

	describe "GET index" do     
  		it "assigns all users as @users" do       
  			user = create(:valid_user) 
  			stub = build_stubbed(:valid_user)      
  			get :index, {}, valid_session       
  			expect(assigns(:users)).to eq([user])     
  		end 
  	end

  	describe "GET show" do   
	  	it "assigns the requested user as @user" do
	  		user = create(:valid_user)
	  		get :show, {:id=> user.to_param}, valid_session
	  		expect(assigns(:user)).to eq(user)
	  	end 
  	end

  	describe "GET new" do   
		it "assigns a new user as @user" do 
			get :new
			expect(response).to be_success 
		end 
	end

	describe "GET edit" do     
		it "assigns the requested user as @user" do     
			user = create(:valid_user)
	  		get :edit, {:id=> user.to_param}, valid_session
	  		expect(assigns(:user)).to eq(user)    
		end  
	end

	describe "DELETE destroy" do   
		it "destroys the requested user" do 
			user = create(:valid_user)
	  		get :destroy, {:id=> user.to_param}, valid_session
	  		expect(User.all.count).to eq(0)
		end

  		it "redirects to the users list" do  
  			user = create(:valid_user)
	  		get :destroy, {:id=> user.to_param}, valid_session
	  		expect(response).to redirect_to users_path
  		end 
  	end

end