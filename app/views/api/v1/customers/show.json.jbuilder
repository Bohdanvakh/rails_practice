json.extract! @customer, :name, :address, :next_call_date, :ts_inserted
json.city @customer.city, :name
json.country @customer.city.country, :name, :name_eng

json.calls @customer.calls do |call|
  json.extract! call, :start_time, :end_time
  json.employee call.employee, :first_name, :last_name
  json.call_outcome call.call_outcome, :outcome_text
end
