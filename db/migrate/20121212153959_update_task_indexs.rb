class UpdateTaskIndexs < ActiveRecord::Migration[5.2]
  def up
    remove_index :tasks, [:project_id]
    add_index :tasks, [:project_id, :feature_id]
  end

  def down
    remove_index :tasks, [:project_id, :feature_id]
    add_index :tasks, [:project_id]
  end
end
