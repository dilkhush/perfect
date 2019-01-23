class AddNextInvoiceNumberToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :next_invoice_number, :integer, :default => 1
  end
end
