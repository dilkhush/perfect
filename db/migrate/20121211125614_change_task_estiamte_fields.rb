class ChangeTaskEstiamteFields < ActiveRecord::Migration[5.2]
  def up
    add_column :tasks, :min_estimated_minutes, :integer, :default => 0, limit: 8

    rename_column :tasks, :estimated_minutes, :max_estimated_minutes

    execute("update tasks set max_estimated_minutes = 0 where max_estimated_minutes IS NULL")

    add_column :tasks, :estimate_scale, :integer, :default => 0
  end

  def down
  end
end
