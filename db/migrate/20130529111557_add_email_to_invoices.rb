class AddEmailToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :email, :string
  end
end
