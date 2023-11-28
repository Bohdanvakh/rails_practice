json.array! @customers do |customer|
  json.extract customer, :id, :name, :address, :next_call_date, :ts_inserted #, :city_id
end
