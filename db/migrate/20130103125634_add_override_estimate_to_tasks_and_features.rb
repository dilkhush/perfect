class AddOverrideEstimateToTasksAndFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :override_min_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :features, :override_max_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :features, :override_estimate_scale, :integer, :default => 0

    add_column :tasks, :override_min_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :tasks, :override_max_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :tasks, :override_estimate_scale, :integer, :default => 0

  end
end
