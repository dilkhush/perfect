class AddRolloverAlertEmailToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :rollover_alert_email, :string
  end
end
