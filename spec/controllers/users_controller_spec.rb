require 'rails_helper'

RSpec.describe UsersController, type: :controller do
let(:my_user) {create(:user) }

  describe "GET #show" do
    before :each do
      sign_in my_user
    end
    
    it "returns http success" do
      get :show, {id: my_user.id}
      expect(response).to have_http_status(:success)
    end
  end

end
