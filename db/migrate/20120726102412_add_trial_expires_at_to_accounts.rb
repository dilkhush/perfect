class AddTrialExpiresAtToAccounts < ActiveRecord::Migration[5.2]
    def change
        add_column :accounts, :trial_expires_at, :datetime
    end
end
