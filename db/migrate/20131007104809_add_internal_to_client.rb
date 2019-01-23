class AddInternalToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :internal, :boolean, default: false
  end
end
