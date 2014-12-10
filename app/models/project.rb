class Project < ActiveRecord::Base
  belongs_to :local
  attr_accessible :end_date, :name, :size, :start_date
end
