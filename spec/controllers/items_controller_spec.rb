require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  
  let(:my_user) {create(:user) }
  let(:my_item) {create(:item, user: my_user) }

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
