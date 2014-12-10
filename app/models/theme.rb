class Theme < ActiveRecord::Base
  attr_accessible :name,
                  :user_stories_attributes,
                  :project_id
  
  belongs_to :project
  has_many :user_stories, :dependent => :destroy
end
