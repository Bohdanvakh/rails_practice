class Customer < ApplicationRecord
  belongs_to :city
  has_many :calls
end
