FactoryBot.define do
  factory :employee do
    first_name { Faker::Name.first_name }
    first_name { Faker::Name.last_name }
  end
end
