class AddClientNameToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :client_name, :string
    add_index :quotes, [:client_id]
    add_index :quotes, [:user_id]
  end
end
