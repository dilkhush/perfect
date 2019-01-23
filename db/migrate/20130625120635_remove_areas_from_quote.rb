class RemoveAreasFromQuote < ActiveRecord::Migration[5.2]
  def up
    remove_column :quotes, :summary
    remove_column :quotes, :further_information
    remove_column :quotes, :disclaimer
  end

  def down
    add_column :quotes, :summary, :text
    add_column :quotes, :further_information, :text
    add_column :quotes, :disclaimer, :text
  end
end
