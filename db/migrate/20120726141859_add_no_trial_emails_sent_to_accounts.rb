class AddNoTrialEmailsSentToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :no_trial_emails_sent, :integer, :default => 0
  end
end
