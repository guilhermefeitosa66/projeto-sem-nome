class CreateUserAbilities < ActiveRecord::Migration
  def change
    create_table :user_abilities do |t|
      t.int :points
      t.references :ability
      t.references :user

      t.timestamps
    end
    add_index :user_abilities, :ability_id
    add_index :user_abilities, :user_id
  end
end
