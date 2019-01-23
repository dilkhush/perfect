class AddClientIdToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :client_id, :integer
  end
end
