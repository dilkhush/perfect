class AddBudgetWarningEmailToAccountSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :account_settings, :budget_warning_email, :string
  end
end
