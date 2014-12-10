class Release < ActiveRecord::Base
  belongs_to :project
  attr_accessible :deliver_date, :version
end
