class CreateUserStorySprints < ActiveRecord::Migration
  def change
    create_table :user_story_sprints do |t|
      t.references :user_story
      t.references :sprint

      t.timestamps
    end
    add_index :user_story_sprints, :user_story_id
    add_index :user_story_sprints, :sprint_id
  end
end
