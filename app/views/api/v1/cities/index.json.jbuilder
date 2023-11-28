json.array! @cities do |city|
  json.extract! city, :id, :name #, :country_id
  json.country city.country.name_eng
end
