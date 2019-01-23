class AddDeadlineAtToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :deadline_at, :date
  end
end
