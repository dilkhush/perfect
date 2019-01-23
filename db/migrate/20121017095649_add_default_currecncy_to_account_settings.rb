class AddDefaultCurrecncyToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :default_currency, :string, :default => 'usd'
  end
end
