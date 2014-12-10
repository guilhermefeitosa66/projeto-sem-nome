class UserStoryAcceptanceCriterion < ActiveRecord::Base
  attr_accessible :description,
                  :status,
                  :user_story_id
  
  belongs_to :user_story
end
