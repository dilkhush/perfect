class RemoveQuote < ActiveRecord::Migration[5.2]
  def up
    drop_table :quotes
  end

  def down
  end
end
