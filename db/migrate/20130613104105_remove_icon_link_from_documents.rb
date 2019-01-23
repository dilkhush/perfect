class RemoveIconLinkFromDocuments < ActiveRecord::Migration[5.2]
  def up
    remove_column :documents, :icon_link
  end

  def down
    add_column :documents, :icon_link, :text
  end
end
