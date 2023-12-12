FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    address { Faker::Address.full_address }
    next_call_date { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    ts_inserted { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    city
  end
end
