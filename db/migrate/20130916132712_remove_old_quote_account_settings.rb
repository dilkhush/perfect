class RemoveOldQuoteAccountSettings < ActiveRecord::Migration[5.2]
  def up
    remove_column :account_settings, :quote_further_information
    remove_column :account_settings, :quote_disclaimer
  end

  def down
    add_column :account_settings, :quote_further_information, :text
    add_column :account_settings, :quote_disclaimer, :text
  end
end
