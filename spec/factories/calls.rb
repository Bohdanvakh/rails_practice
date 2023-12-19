FactoryBot.define do
  factory :call do
    start_time  { Faker::Time.between(from: DateTime.now - 1.year, to: DateTime.now) }
    end_time { Faker::Time.between(from: DateTime.now - 1.year, to: DateTime.now) }
    employee
    call_outcome
    customer
  end
end
