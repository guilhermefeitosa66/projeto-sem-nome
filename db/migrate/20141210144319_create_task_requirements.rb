class CreateTaskRequirements < ActiveRecord::Migration
  def change
    create_table :task_requirements do |t|
      t.integer :level
      t.references :task
      t.references :ability

      t.timestamps
    end
    add_index :task_requirements, :task_id
    add_index :task_requirements, :ability_id
  end
end
