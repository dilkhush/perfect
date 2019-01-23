class CreateRateCardFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :rate_card_features do |t|
      t.integer :rate_card_id, :feature_id
      t.integer :percentage, :default => 0
      t.timestamps
    end

    add_index :rate_card_features, [:rate_card_id, :feature_id], :name => 'rate_card_features_in1'
    add_index :rate_card_features, [:feature_id, :rate_card_id], :name => 'rate_card_features_in2'
  end
end
