class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  validates :name, presence: true, unique: true
  validates :name_eng, presence: true, unique: true
  validates :code, presence: true, unique: true
end
