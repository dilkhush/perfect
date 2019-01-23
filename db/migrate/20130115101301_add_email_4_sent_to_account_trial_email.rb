class AddEmail4SentToAccountTrialEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :account_trial_emails, :email_4_sent, :boolean, :default => false
  end
end
