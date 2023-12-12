class Customer < ApplicationRecord
  belongs_to :city
  has_many :calls

  validates :name, presence: true
  validates :address, presence: true
end
