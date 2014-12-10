class Ability < ActiveRecord::Base
  attr_accessible :description,
                  :name,
                  :user_abilities_attributes,
                  :task_requirements_attributes,
                  :users_attributes,
                  :tasks_attributes

  has_many :user_abilities, :dependent => :destroy
  has_many :task_requirements, :dependent => :destroy
  has_many :users, through: :user_abilities
  has_many :tasks, through: :task_requirements
end