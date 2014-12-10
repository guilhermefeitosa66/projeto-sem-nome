class Release < ActiveRecord::Base
  attr_accessible :deliver_date,
                  :version,
                  :sprints_attributes,
                  :project_id
  
  belongs_to :project
  has_many :sprints, :dependent => :destroy
end
