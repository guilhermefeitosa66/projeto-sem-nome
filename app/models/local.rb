class Local < ActiveRecord::Base
  attr_accessible :city,
                  :country,
                  :name,
                  :state,
                  :zipcode,
                  :users_attributes,
                  :projects_attributes

  has_many :users, :dependent => :destroy
  has_many :projects, :dependent => :destroy
end
