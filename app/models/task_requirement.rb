class TaskRequirement < ActiveRecord::Base
  belongs_to :task
  belongs_to :ability
  attr_accessible :level
end
