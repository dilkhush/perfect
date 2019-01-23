class RemoveDeadlineFromQuotes < ActiveRecord::Migration[5.2]
  def up
    remove_column :quotes, :deadline_at
  end

  def down
    add_column :quotes, :deadline_at, :date
  end
end
