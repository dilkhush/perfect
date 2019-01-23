class AddPercentageCompleteToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :percentage_complete, :integer, :default => 0
  end
end
