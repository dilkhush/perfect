class RemoveSingupCompleteFromAccounts < ActiveRecord::Migration[5.2]

  def change
      remove_column :accounts, :signup_complete
  end

end
