class Api::V1::EmployeesController < Api::V1::ApiV1Controller
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render json: @employee, status: :created
    else
      render json: "Employee wasn't created :(", status: :unprocessable_entity
    end
  end

  private

  def employee_params
    params.permit(:first_name, :last_name)
  end
end
