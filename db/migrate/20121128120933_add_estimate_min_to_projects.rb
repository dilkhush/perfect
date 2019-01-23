class AddEstimateMinToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :min_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :projects, :max_estimated_minutes, :integer, :default => 0, limit: 8
    add_column :projects, :estimate_scale, :integer, :default => 0
  end
end
