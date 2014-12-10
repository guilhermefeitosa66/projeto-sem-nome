class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :version
      t.date :deliver_date
      t.references :project

      t.timestamps
    end
    add_index :releases, :project_id
  end
end
