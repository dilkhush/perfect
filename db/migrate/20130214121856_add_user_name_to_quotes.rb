class AddUserNameToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :user_name, :string
  end
end
