class Call < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :call_outcome
end
