class Language < ActiveRecord::Base
  attr_accessible :name,
                  :user_languages_attributes,
                  :users_attributes

  has_many :user_languages, :dependent => :destroy
  has_many :users, through: :user_languages
end
