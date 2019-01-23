class AddPoNumberToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :po_number, :string
  end
end
