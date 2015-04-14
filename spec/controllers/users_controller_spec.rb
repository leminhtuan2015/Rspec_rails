require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	user0 = FactoryGirl.create(:user)
	user1 = User.create name: "jdoe"

      before do 
        @user0 = User.create name: "Example User"
        @users = [user0, user1]
        @result = getx
      end

      let(:user2) { User.create name: "Example xxx"} 
      # user2 = User.create name: "Example xxx"

      subject { User.new name: "Instant_variable_of_user" }

	it "Index" do
        binding.pry if !user1.nil?
        get :index
        expect(response).to be_success
    end

end
