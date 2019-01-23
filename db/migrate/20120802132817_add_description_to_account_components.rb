class AddDescriptionToAccountComponents < ActiveRecord::Migration[5.2]
  def change
    add_column :account_components, :description, :text
  end
end
