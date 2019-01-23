class AddNumberOfLoginsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :number_of_logins, :integer, default: 0
  end
end
