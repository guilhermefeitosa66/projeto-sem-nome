class UserStorySprint < ActiveRecord::Base
  belongs_to :user_story
  belongs_to :sprint
  # attr_accessible :title, :body
end
