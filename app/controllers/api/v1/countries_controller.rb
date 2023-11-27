class Api::V1::CountriesController < Api::V1::ApiV1Controller
  def index
    @countries = Country.all
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      render json: @country, status: :created
    else
      render json: "Country wasn't created :(", status: :unprocessable_entity
    end
  end

  private

  def country_params
    params.permit(:name, :name_eng, :code)
  end
end
