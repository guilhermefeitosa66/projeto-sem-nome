class Task < ActiveRecord::Base
  belongs_to :user_story
  attr_accessible :description, :end_date, :start_date, :status
end
