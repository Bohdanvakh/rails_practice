FactoryBot.define do
  factory :call_outcome do
    outcome_text { Faker::Lorem.sentence(word_count: 10) }
  end
end
