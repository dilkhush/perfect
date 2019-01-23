class AddProjectManagerIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_manager_id, :integer
    add_index :projects, [:project_manager_id]
  end
end
