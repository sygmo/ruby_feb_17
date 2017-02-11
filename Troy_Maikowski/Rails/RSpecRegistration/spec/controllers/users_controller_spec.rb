require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #process_registration" do
    it "returns http success" do
      get :process_registration
      expect(response).to have_http_status(:success)
    end
  end

end
