class AddPriorityToAccountComponents < ActiveRecord::Migration[5.2]
  def change
    add_column :account_components, :priority, :integer
  end
end
