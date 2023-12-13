require 'rails_helper'

RSpec.describe City, type: :request do
  describe "GET #index" do
    it 'returns a successful response' do
      get "/api/v1/cities", as: :json
      expect(response).to have_http_status(:success)
    end

    it 'returns a list of cities' do
      country = create(:country)

      city1 = create(:city, country: country)
      city2 = create(:city, country: country)

      get "/api/v1/cities", as: :json

      countries_json = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(countries_json).to be_an(Array)

      expect(countries_json.first['name']).to eq(city1.name)
      expect(countries_json.second['name']).to eq(city2.name)
    end
  end

  describe "POST #create" do
    it 'creates a new city' do
      country = create(:country)
      valid_params = { name: 'CityName', country_id: country.id }

      post "/api/v1/cities", params: valid_params, as: :json

      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['name']).to eq('CityName')
    end

    it 'does not create a new city' do
      country = create(:country)
      valid_params = { name: nil, country_id: country.id }

      post "/api/v1/cities", params: valid_params, as: :json

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
