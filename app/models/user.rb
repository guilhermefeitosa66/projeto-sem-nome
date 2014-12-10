class User < ActiveRecord::Base
  attr_accessible :admin, 
                  :email,
                  :name,
                  :password,
                  :schedule,
                  :local_id,
                  :user_tasks_attributes,
                  :user_abilities_attributes,
                  :user_languages_attributes,
                  :function_user_projects_attributes,
                  :languages_attributes,
                  :functions_attributes,
                  :projects_attributes,
                  :tasks_attributes,
                  :abilities_attributes
 
  belongs_to :local
  has_many :user_tasks, :dependent => :destroy
  has_many :user_abilities, :dependent => :destroy
  has_many :user_languages, :dependent => :destroy
  has_many :function_user_projects, :dependent => :destroy
  has_many :languages, through: :user_languages
  has_many :functions, through: :function_user_projects
  has_many :projects, through: :function_user_projects
  has_many :tasks, through: :user_tasks
  has_many :abilities, through: :user_abilities
end
