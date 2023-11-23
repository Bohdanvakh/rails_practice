class AddBelongsToCall < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :calls, :customer
    add_belongs_to :calls, :employee
    add_belongs_to :calls, :call_outcome
  end
end
