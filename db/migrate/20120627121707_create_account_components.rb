class CreateAccountComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :account_components do |t|
        t.string "name"
        t.integer "price_in_cents", "chargify_component_number"
        t.boolean "show_component", :default => true
        t.timestamps
    end
  end
end