class AddProjectStatusOverriddenToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_status_overridden, :boolean
  end
end
