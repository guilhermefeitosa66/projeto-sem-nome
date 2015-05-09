class Local < ActiveRecord::Base
  attr_accessible :city,
                  :country,
                  :name,
                  :state,
                  :zipcode,
                  :users_attributes,
                  :projects_attributes
                  validates :city, presence: true
                  validates :country, presence: true
                  validates :name, presence: true
                  validates :state, presence: true
                  validates :zipcode, presence: true

  has_many :users, :dependent => :destroy
  has_many :projects, :dependent => :destroy
end
