  require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do 
    before do 
       @user = User.create(email: 'scott@test.com', password: 'abbyabby', password_confirmation: 'abbyabby', first_name: 'jon', last_name: 'snow')      
    end 
    
    it "can be created" do 
      expect(@user).to be_valid
    end 

    it "cannot be created with out first_name, last_name" do 
      @user.first_name = nil 
      @user.last_name = nil
      expect(@user).to_not be_valid
    end   
  end    
end
