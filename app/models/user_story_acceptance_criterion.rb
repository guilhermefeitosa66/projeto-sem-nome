class UserStoryAcceptanceCriterion < ActiveRecord::Base
  belongs_to :user_story
  attr_accessible :description, :status
end
