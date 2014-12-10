class Sprint < ActiveRecord::Base
  attr_accessible :end_date, 
                  :execution_end_date,
                  :execution_start_date,
                  :planning_end_date,
                  :planning_start_date,
                  :retrospective_meeting_date,
                  :review_meeting_date,
                  :start_date,
                  :release_id,
                  :project_id,
                  :user_stories_attributes
  
  belongs_to :release
  belongs_to :project
  has_many :user_stories, :dependent => :destroy
end