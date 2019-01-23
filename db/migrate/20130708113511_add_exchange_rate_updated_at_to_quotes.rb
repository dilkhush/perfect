class AddExchangeRateUpdatedAtToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :exchange_rate_updated_at, :datetime
  end
end
