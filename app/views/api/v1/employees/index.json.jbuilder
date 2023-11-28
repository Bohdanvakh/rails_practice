json.array! @employees do |employee|
  json.extract! employee, :id, :first_name, :last_name
end
