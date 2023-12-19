json.extract! @city, :id, :name
json.country @city.country.name_eng
json.customers @city.customers do |customer|
  json.extract! customer, :name, :address

  json.calls customer.calls do |call|
    json.extract! call, :start_time, :end_time
    json.employee call.employee, :first_name, :last_name
    json.call_outcome call.call_outcome
  end
end
