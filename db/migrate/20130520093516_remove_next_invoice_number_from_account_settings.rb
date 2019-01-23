class RemoveNextInvoiceNumberFromAccountSettings < ActiveRecord::Migration[5.2]
  def up
    remove_column :account_settings, :next_invoice_number
  end

  def down
    add_column :account_settings, :next_invoice_number, :integer, :default => 1
  end
end
