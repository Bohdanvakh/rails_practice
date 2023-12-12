require 'rails_helper'

  RSpec.describe Country, type: :request do
    let(:country) { create(:country) }

    describe 'GET #index' do
      it 'returns a successful response' do
        get "/api/v1/countries", as: :json
        expect(response).to have_http_status(:success)
      end

      it 'assigns @countries with countries and associated cities' do
        country1 = create(:country)
        country2 = create(:country)

        city1 = create(:city, country: country1)
        city2 = create(:city, country: country1)
        city3 = create(:city, country: country2)

        get "/api/v1/countries", as: :json

        countries_json = JSON.parse(response.body)

        country_names_and_cities = countries_json.map do |country_data|
          country_name = country_data['extract']['name']
          city_names = country_data['array'].map { |city_data| city_data['extract']['name'] }
          [country_name, city_names]
        end

        expect(country_names_and_cities).to include([country1.name, [city1.name, city2.name]], [country2.name, [city3.name]])
      end
    end

    describe "POST #create" do
      context "with valid parameters" do
        let(:valid_params) { { name: 'CountryName', name_eng: 'CountryNameEng', code: 'CC' } }

        it 'it creates a new country' do
          post "/api/v1/countries", params: valid_params, as: :json

          expect(response).to have_http_status(:created)
          expect(JSON.parse(response.body)['name']).to eq('CountryName')
        end
      end

      context 'with invalid parameters' do
        let(:invalid_params) { { name: nil, name_eng: 'CountryNameEng', code: 'CC' } }

        it 'does not create a new country' do
          post "/api/v1/countries", params: invalid_params, as: :json

          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end

    describe "GET #show" do
      context "valid country id" do
        it 'show country data' do
          country = create(:country)
          country_city = create(:city, country: country)

          get "/api/v1/countries/#{country.id}", as: :json

          country_data = JSON.parse(response.body)
          city_data = country_data['cities'].first

          expect(response).to have_http_status(:success)
          expect(country_data['name']).to eq(country.name)

          expect(country_data['cities']).to be_an(Array)
          expect(city_data['extract']['name']).to eq(country_city.name)
        end
      end
    end
  end
