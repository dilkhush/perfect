class AddUserIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :user_id, :integer
    add_index :invoices, [:user_id]
  end
end
