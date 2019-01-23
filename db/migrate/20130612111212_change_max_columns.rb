class ChangeMaxColumns < ActiveRecord::Migration[5.2]
  def up
    execute("ALTER TABLE tasks CHANGE max_estimated_minutes estimated_minutes BIGINT DEFAULT 0")
  end

  def down
  end
end
