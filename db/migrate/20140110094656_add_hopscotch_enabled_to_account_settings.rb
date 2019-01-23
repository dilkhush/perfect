class AddHopscotchEnabledToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :hopscotch_enabled, :boolean, default: false
  end
end
