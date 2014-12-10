class CreateFunctionUserProjects < ActiveRecord::Migration
  def change
    create_table :function_user_projects do |t|
      t.references :function
      t.references :user
      t.references :project

      t.timestamps
    end
    add_index :function_user_projects, :function_id
    add_index :function_user_projects, :user_id
    add_index :function_user_projects, :project_id
  end
end
