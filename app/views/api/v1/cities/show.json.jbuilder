json.extract! @city, :id, :name, :country
json.customers @city.customers do |customer|
  json.extract! customer, :name, :address
end
