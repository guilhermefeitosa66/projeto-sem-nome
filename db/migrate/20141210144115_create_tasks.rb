class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.references :user_story

      t.timestamps
    end
    add_index :tasks, :user_story_id
  end
end
