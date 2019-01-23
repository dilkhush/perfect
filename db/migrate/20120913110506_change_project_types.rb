class ChangeProjectTypes < ActiveRecord::Migration[5.2]
  def up
     add_column :account_settings, :lunch_task_id, :integer
     add_index :account_settings, [:lunch_task_id]
  end

  def down
      remove_column :account_settings, :lunch_task_id, :integer
  end

end
