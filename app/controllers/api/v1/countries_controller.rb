class Api::V1::CountriesController < Api::V1::ApiV1Controller
  def index
    @countries = Country.all
  end
end
