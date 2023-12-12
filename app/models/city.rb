class City < ApplicationRecord
  belongs_to :country
  has_many :customers, dependent: :destroy

  validates :name, presence: true, unique: true
end
