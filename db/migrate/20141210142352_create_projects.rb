class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :size
      t.date :start_date
      t.date :end_date
      t.references :local

      t.timestamps
    end
    add_index :projects, :local_id
  end
end
