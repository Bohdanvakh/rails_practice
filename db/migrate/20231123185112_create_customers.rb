class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.date :next_call_date
      t.datetime :ts_inserted
      t.timestamps
    end
  end
end
