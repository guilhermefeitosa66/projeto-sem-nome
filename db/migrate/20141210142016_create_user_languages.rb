class CreateUserLanguages < ActiveRecord::Migration
  def change
    create_table :user_languages do |t|
      t.integer :proficiency
      t.references :language
      t.references :user

      t.timestamps
    end
    add_index :user_languages, :language_id
    add_index :user_languages, :user_id
  end
end
