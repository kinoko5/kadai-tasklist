class AddStatusToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :status, :string
    t.references :user, foreign_key: true
  end
end
