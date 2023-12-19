FactoryBot.define do
  factory :call do
    start_time  { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    end_time { Faker::Time.between(from: 1.year.ago, to: Time.zone.now, format: :default) }
    employee
    call_outcome
    customer
  end
end
