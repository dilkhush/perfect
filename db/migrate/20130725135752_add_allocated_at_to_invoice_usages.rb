class AddAllocatedAtToInvoiceUsages < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_usages, :allocated_at, :date
  end
end
