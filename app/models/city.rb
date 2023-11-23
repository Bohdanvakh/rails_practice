class City < ApplicationRecord
  belongs_to :country
  has_many :customers, dependent: :destroy
end
