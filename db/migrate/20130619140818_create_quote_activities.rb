class CreateQuoteActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_activities do |t|
      t.integer :quote_id, :rate_card_id
      t.string :name
      t.integer :estimate_scale, :default => 1
      t.integer :min_estimated_minutes, :max_estimated_minutes, :min_amount_cents, :max_amount_cents, limit: 8, default: 0
      t.integer :position
      t.timestamps
    end
    add_index :quote_activities, [:quote_id]
    add_index :quote_activities, [:rate_card_id]

  end
end
