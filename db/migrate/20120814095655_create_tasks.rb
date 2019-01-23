class CreateTasks < ActiveRecord::Migration[5.2]
    def change
        create_table :tasks do |t|
            t.string :name
            t.text :description
            t.integer :project_id, :estimated_minutes, limit: 8
            t.timestamps
        end

        add_index :tasks, [:project_id]
    end
end
