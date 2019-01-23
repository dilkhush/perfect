class AddEstimateTypeToQuoteActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :quote_activities, :estimate_type, :integer, :default => 0
  end
end
