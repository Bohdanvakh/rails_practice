json.array! @call_outcomes do |call_outcome|
  json.extract! call_outcome, :id, :outcome_text
end
