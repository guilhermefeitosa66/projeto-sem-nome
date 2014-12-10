class Project < ActiveRecord::Base
  attr_accessible :end_date,
                  :name,
                  :size,
                  :start_date,
                  :function_user_projects_attributes,
                  :users_attributes,
                  :functions_attributes,
                  :releases_attributes,
                  :sprints_attributes,
                  :themes_attributes,
                  :local_id
  
  belongs_to :local
  has_many :function_user_projects, :dependent => :destroy
  has_many :users, through: :function_user_projects
  has_many :functions, through: :function_user_projects
  has_many :releases, :dependent => :destroy
  has_many :sprints, :dependent => :destroy
  has_many :themes, :dependent => :destroy
end
