class Task < ActiveRecord::Base
  attr_accessible :description,
                  :end_date,
                  :start_date,
                  :status,
                  :user_story_id
                  :task_requirements_attributes,
                  :user_tasks_attributes,
                  :users_attributes,
                  :abilities_attributes
  
  belongs_to :user_story
  has_many :task_requirements, :dependent => :destroy
  has_many :user_tasks, :dependent => :destroy
  has_many :users, through: :user_tasks
  has_many :abilities, through: :task_requirements
end
