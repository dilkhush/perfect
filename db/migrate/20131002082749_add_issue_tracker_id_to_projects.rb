class AddIssueTrackerIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :issue_tracker_id, :string
  end
end
