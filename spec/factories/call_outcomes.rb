FactoryBot.define do
  factory :call_outcome do
    outcome_text { Faker::String.random(length: 40..120) }
  end
end
