class AddPositionToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :position, :integer
  end
end
