FactoryBot.define do
  factory :country do
    name { Faker::Address.country }
    name_eng  { Faker::Address.country }
    code { Faker::Address.country_code }
  end
end
