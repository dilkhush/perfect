class AddIndexsToUserNames < ActiveRecord::Migration[5.2]
  def change
      remove_index :users, [:account_id]
      add_index :users, [:account_id, :firstname, :lastname]
  end
end
