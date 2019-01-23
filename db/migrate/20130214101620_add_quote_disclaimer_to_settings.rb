class AddQuoteDisclaimerToSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :quote_further_information, :text
    add_column :account_settings, :quote_disclaimer, :text
  end
end
