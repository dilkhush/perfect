class AddIndexToInvoiceNumber < ActiveRecord::Migration[5.2]
  def change
    add_index :invoices, [:invoice_number]
  end
end
