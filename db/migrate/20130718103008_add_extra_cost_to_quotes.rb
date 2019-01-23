class AddExtraCostToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :extra_cost_cents, :integer, :default => 0
    add_column :quotes, :extra_cost_title, :string
  end
end
