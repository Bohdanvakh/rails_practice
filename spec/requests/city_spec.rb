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

  describe "GET #show" do
    before do
      @country = create(:country)
      @city = create(:city, country: @country)

      @customer = create(:customer, city: @city)
      @employee = create(:employee)
      @call_outcome = create(:call_outcome)
      @call = create(:call, employee: @employee, call_outcome: @call_outcome, customer: @customer)
    end
    it "shows the city data" do
      get "/api/v1/cities/#{@city.id}", as: :json

      countries_json = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(countries_json['id']).to eq(@city.id)
      expect(countries_json['customers'][0]['name']).to eq(@customer.name)
      expect(countries_json['customers'][0]['address']).to eq(@customer.address)
      expect(countries_json['customers'][0]['calls']).to be_an(Array)
      expect(countries_json['customers'][0]['calls'][0]['start_time']).not_to be_empty
      expect(countries_json['customers'][0]['calls'][0]['end_time']).not_to be_empty
      expect(countries_json['customers'][0]['calls'][0]['call_outcome']['id']).to eq(@call_outcome.id)
      expect(countries_json['customers'][0]['calls'][0]['call_outcome']['outcome_text']).to eq(@call_outcome.outcome_text)
    end
  end
end
