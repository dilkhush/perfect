class AddProjectColorToProjects < ActiveRecord::Migration[5.2]
    def change
        add_column :projects, :color, :string, :size => 6, :default => '#B7C18F'
        add_column :projects, :event_type, :integer, :default => 0
    end
end
