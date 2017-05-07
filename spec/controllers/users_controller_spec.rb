require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  #before :each do
   # sign_in user
  #end
  
  
  let(:user_attributes) do
    {
      name: "Blocster",
      email: "blocster@bloc.io",
      password: "helloworld"
    }
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
