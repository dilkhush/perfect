class AddQuoteActivityIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :quote_activity_id, :integer
  end
end
