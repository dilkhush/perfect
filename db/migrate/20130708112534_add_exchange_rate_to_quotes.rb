class AddExchangeRateToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :exchange_rate, :decimal, :precision => 10, :scale => 6
  end
end
