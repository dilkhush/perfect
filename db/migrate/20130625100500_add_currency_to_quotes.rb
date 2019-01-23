class AddCurrencyToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :currency, :string
  end
end
