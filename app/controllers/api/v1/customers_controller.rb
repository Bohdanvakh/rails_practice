class Api::V1::CustomersController < Api::V1::ApiV1Controller
  def index
    @customers = Customer.includes(:city, :calls)
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: @customer, status: :created
    else
      render json: "Customer wasn't created :(", status: :unprocessable_entity
    end
  end

  def show
    @customer = Customer.includes({calls: [:call_outcome, :employee]}).find(params[:id])
  end

  private

  def customer_params
    params.permit(:name, :address, :next_call_date, :ts_inserted, :city_id)
  end
end
