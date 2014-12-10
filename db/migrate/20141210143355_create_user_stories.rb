class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :description
      t.integer :business_value
      t.integer :story_points
      t.integer :status
      t.references :theme

      t.timestamps
    end
    add_index :user_stories, :theme_id
  end
end
