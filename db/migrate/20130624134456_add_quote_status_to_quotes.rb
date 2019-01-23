class AddQuoteStatusToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :quote_status, :integer
  end
end
