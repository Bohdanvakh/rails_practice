json.array! @customers do |customer|
  json.extract! customer, :id, :name, :address, :next_call_date, :ts_inserted
  json.city customer.city.name
end
