class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :schedule
      t.string :email
      t.string :password
      t.boolean :admin
      t.references :local

      t.timestamps
    end
    add_index :users, :local_id
  end
end
