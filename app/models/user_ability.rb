class UserAbility < ActiveRecord::Base
  attr_accessible :points,
                  :ability_id,
                  :user_id
  
  belongs_to :ability
  belongs_to :user
end
