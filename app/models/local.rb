class Local < ActiveRecord::Base
  attr_accessible :city, :country, :name, :state, :zipcode
end
