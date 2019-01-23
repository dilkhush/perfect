class AddExtraFieldsToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :pre_paid, :boolean
    add_column :invoices, :default_currency_total_amount_cents_exc_vat, :integer
    add_column :invoices, :default_currency_total_amount_cents_inc_vat, :integer
  end
end
