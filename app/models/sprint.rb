class Sprint < ActiveRecord::Base
  belongs_to :release
  belongs_to :project
  attr_accessible :end_date, :execution_end_date, :execution_start_date, :planning_end_date, :planning_start_date, :retrospective_meeting_date, :review_meeting_date, :start_date
end
