class TaskRequirement < ActiveRecord::Base
  attr_accessible :level,
                  :task_id,
                  :ability_id
  
  belongs_to :task
  belongs_to :ability
end
