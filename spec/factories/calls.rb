FactoryBot.define do
  factory :call do
    name { Faker::Address.country }
    start_time  { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    end_time { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    customer
    employee
    call_outcome
  end
end
