class AddIncludeInQuoteToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :included_in_quote, :boolean, :default => true
  end
end
