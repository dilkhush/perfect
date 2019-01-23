class AddStaleOpportunityEmailToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :stale_opportunity_email, :string
  end
end
