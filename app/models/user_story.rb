class UserStory < ActiveRecord::Base
  attr_accessible :business_value,
                  :description,
                  :status,
                  :story_points,
                  :theme_id,
                  :sprint_id,
                  :user_story_acceptance_criterions_attributes,
                  :tasks_attributes
  
  belongs_to :theme
  belongs_to :sprint
  has_many :user_story_sprints, :dependent => :destroy
  # corrigir pluralização de criterions para criteria
  has_many :user_story_acceptance_criterions, :dependent => :destroy
  has_many :tasks, :dependent => :destroy
end
