class CreateClients < ActiveRecord::Migration[5.2]
    def change
        create_table :clients do |t|
            t.string :name
            t.integer :account_id
            t.timestamps
        end
    end
end
