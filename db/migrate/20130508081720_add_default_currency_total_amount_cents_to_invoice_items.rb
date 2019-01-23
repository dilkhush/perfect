class AddDefaultCurrencyTotalAmountCentsToInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_items, :default_currency_amount_cents, :integer
  end
end
