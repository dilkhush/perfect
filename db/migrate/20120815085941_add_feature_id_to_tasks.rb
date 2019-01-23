class AddFeatureIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :feature_id, :integer
    add_index :tasks, [:feature_id]
  end
end
