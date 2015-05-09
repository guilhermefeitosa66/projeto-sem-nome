class Function < ActiveRecord::Base
  attr_accessible :name,
                  :function_user_projects_attributes,
                  :users_attributes,
                  :projects_attributes
                  validates :name, presence: true,
                  uniqueness: {case_sensintive: false}

  has_many :function_user_projects, :dependent => :destroy
  has_many :users, through: :function_user_projects
  has_many :projects, through: :function_user_projects
end
