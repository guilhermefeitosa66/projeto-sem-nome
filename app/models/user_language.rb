class UserLanguage < ActiveRecord::Base
  belongs_to :language
  belongs_to :user
  attr_accessible :proficiency
end
