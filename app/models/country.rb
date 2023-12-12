class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  validates :name, presence: true
  validates :name_eng, presence: true
  validates :code, presence: true
end
