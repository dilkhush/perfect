class AddEstimationToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :min_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :features, :max_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :features, :estimate_scale, :integer, :default => 0
  end
end
