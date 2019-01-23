class CreateQaStats < ActiveRecord::Migration[5.2]
  def change
    create_table :qa_stats do |t|
      t.text    :ticket_breakdown
      t.integer :project_id, :total_tickets
      t.timestamps
    end
  end
end
