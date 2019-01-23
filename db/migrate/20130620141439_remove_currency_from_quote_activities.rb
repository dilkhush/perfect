class RemoveCurrencyFromQuoteActivities < ActiveRecord::Migration[5.2]
  def up
    remove_column :quotes, :currency
  end

  def down
    add_column :quotes, :currency, :string
  end
end
