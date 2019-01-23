class RemoveDefaultRateCard < ActiveRecord::Migration[5.2]

  def change
    remove_column :rate_cards, :default_card
  end

end
