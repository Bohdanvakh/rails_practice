class AddCountryToCity < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :cities, :country
  end
end
