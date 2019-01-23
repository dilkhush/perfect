class AddUseAsDefaultToRateCards < ActiveRecord::Migration[5.2]
  def change
    add_column :rate_cards, :default_card, :boolean, :default => false
  end
end
