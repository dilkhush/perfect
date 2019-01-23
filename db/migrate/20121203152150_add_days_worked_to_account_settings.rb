class AddDaysWorkedToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :working_days, :string
  end
end
