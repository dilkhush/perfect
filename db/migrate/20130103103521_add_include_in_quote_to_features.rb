class AddIncludeInQuoteToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :included_in_quote, :boolean, :default => true
  end
end
