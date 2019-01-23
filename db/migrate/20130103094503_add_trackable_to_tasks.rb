class AddTrackableToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :trackable, :boolean, :default => true
  end
end
