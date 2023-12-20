require 'rails_helper'

RSpec.describe Customer, type: :request do
  describe 'GET #index' do
    it 'returns a successful response' do
      get "/api/v1/customers", as: :json
      expect(response).to have_http_status(:success)
    end
  end
end
