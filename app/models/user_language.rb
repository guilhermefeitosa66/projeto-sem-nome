class UserLanguage < ActiveRecord::Base
  attr_accessible :proficiency,
                  :language_id,
                  :user_id

  belongs_to :language
  belongs_to :user
end
