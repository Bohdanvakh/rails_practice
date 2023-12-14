json.extract! @city, :id, :name
json.country @city.country.name_eng3
json.customers @city.customers do |customer|
  json.extract! customer, :name, :address

  json.calls customer.calls do |call|
    json.extract! call, :start_time, :end_time
  end
end
