class RemoveMoreEstimateColumns < ActiveRecord::Migration[5.2]
  def up
    remove_column :tasks, :trackable
    drop_table :rate_card_features
    drop_table :rate_card_projects
    drop_table :rate_card_tasks
  end

  def down
  end
end
