json.extract! @country, :id, :name, :name_eng
json.cities @country.cities do |city|
  json.extract city, :id, :name

  json.customers city.customers do |customer|
    json.extract! customer, :id, :name, :address, :next_call_date, :ts_inserted
  end
end
