class Employee < ApplicationRecord
  has_many :calls

  validates :first_name, presence: true
  validates :last_name, presence: true
end
