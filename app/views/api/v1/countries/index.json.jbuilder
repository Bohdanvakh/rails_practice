json.array! @countries do |country|
    json.extract country, :id, :name, :name_eng, :code
end
