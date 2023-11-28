class Api::V1::CallOutcomesController < Api::V1::ApiV1Controller
  def index
    @call_outcomes = CallOutcome.all
  end

  def create
    @call_outcome = CallOutcome.new(call_outcome_params)
    if @call_outcome.save
      render json: @call_outcome, status: :created
    else
      render json: "Call outcome wasn't created :(", status: :unprocessable_entity
    end
  end

  private

  def call_outcome_params
    params.permit(:outcome_text)
  end
end
