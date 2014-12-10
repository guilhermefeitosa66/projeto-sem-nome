class UserStory < ActiveRecord::Base
  belongs_to :theme
  attr_accessible :business_value, :description, :status, :story_points
end
