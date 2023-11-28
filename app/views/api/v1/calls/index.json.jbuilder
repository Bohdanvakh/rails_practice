json.array! @calls do |call|
  json.extract! call, :id, :start_time, :end_time, :customer_id, :employee_id, :call_outcome_id
end
