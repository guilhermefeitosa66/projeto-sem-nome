class CreateUserStoryAcceptanceCriterions < ActiveRecord::Migration
  def change
    create_table :user_story_acceptance_criterions do |t|
      t.string :description
      t.integer :status
      t.references :user_story

      t.timestamps
    end
    add_index :user_story_acceptance_criterions, :user_story_id
  end
end
