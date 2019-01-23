class ChangePrePaidToPrePayment < ActiveRecord::Migration[5.2]
  def up
    rename_column :invoices, :pre_paid, :pre_payment
  end

  def down
    rename_column :invoices, :pre_payment, :pre_paid
  end
end
