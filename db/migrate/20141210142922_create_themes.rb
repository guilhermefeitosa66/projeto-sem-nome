class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
    add_index :themes, :project_id
  end
end
