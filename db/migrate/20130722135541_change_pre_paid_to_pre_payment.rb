class ChangePrePaidToPrePayment < ActiveRecord::Migration[5.2]
  def up
    execute("ALTER TABLE invoices CHANGE pre_paid pre_payment TINYINT(1)")
  end

  def down
    execute("ALTER TABLE invoices CHANGE pre_payment pre_paid TINYINT(1)")
  end
end
