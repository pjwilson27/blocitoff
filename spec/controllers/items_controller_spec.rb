require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  
  let(:my_user) {create(:user) }
  let(:my_item) {create(:item, user_id: my_user) }

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "DELETE destroy" do
    it "redirects to the show" do
      delete :destroy, :my_item
      expect(response).to redirect_to(user_path(current_user))
    end
  end
  
  describe "DELETE destroy" do
    it "deletes the item" do
      delete :destroy, :my_item
    end
  end
end
