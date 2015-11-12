FactoryGirl.define do  
 
	factory :valid_user, class: User do     
		username "name"   
		fname "John"
		lname "Smith"  
		email "name@gmail.com"     
		password "1234"

	end 

	factory :invalid_user, class: User do 
		username ""   
		fname "John"
		lname "Smith"         
		email "fido@gmail.com"     

	end 

end