class AddLogoFingerprintToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :logo_fingerprint, :string
  end
end
