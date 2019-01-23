class CreateProjectComments < ActiveRecord::Migration[5.2]
  def change
    create_table :project_comments do |t|
      t.integer :user_id, :project_id
      t.text :comment
      t.timestamps
    end
    add_index :project_comments, [:user_id]
    add_index :project_comments, [:project_id]
  end
end
