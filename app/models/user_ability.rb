class UserAbility < ActiveRecord::Base
  belongs_to :ability
  belongs_to :user
  attr_accessible :points
end
