class CreateTeams < ActiveRecord::Migration[5.2]
    def change
        create_table :teams do |t|
            t.string :name
            t.integer :account_id
            t.timestamps
        end
        add_index :teams, :account_id
    end
end
