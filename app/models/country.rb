class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :name_eng, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
end
