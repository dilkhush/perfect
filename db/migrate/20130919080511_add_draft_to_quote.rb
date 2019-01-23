class AddDraftToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :draft, :boolean, :default => true
  end
end
