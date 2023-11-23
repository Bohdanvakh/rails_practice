class CreateCallOutcomes < ActiveRecord::Migration[7.1]
  def change
    create_table :call_outcomes do |t|
      t.string :outcome_text
      t.timestamps
    end
  end
end
