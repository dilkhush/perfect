class AddRateCardToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :rate_card_id, :integer
  end
end
