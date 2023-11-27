json.array! @countries do |country|
    json.extract country, :id, :name, :name_eng, :code
    json.array country.cities do |city|
        json.extract city, :id, :name
    end
end
