class Api::V1::CallsController < Api::V1::ApiV1Controller
  def index
    @calls = Call.all
  end

  def create
    @call = Call.new(call_params)
    if @call.save
      render json: @call, status: :created
    else
      render json: "Call wasn't created :(", status: :unprocessable_entity
    end
  end

  private

  def call_params
    params.permit(:start_time, :end_time, :customer_id, :employee_id, :call_outcome_id)
  end
end
