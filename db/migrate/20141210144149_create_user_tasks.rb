class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.references :user
      t.references :task

      t.timestamps
    end
    add_index :user_tasks, :user_id
    add_index :user_tasks, :task_id
  end
end
