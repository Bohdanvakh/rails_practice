class Api::V1::CitiesController < Api::V1::ApiV1Controller
  def index
    @cities = City.all
  end
end
