class Api::V1::CitiesController < Api::V1::ApiV1Controller
  def index
    @cities = City.all
  end

  def create
    @city = City.new(city_params)
    if @city.save
      render json: @city, status: :created
    else
      render json: "City wasn't created :(", status: :unprocessable_entity
    end
  end

  private

  def city_params
    params.permit(:name, :country_id)
  end
end
