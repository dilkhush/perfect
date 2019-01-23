class ChangeMaxColumns < ActiveRecord::Migration[5.2]
  def up
    rename_column :tasks, :max_estimated_minutes, :estimated_minutes
    change_column :tasks, :estimated_minutes, :integer, limit: 8, default: 0
  end

  def down
  end
end
