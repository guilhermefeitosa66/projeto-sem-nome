class Language < ActiveRecord::Base
  attr_accessible :name,
                  :user_languages_attributes,
                  :users_attributes

                  validates :name, presence: true,
                  uniqueness: {case_sensintive: false}

  has_many :user_languages, :dependent => :destroy
  has_many :users, through: :user_languages
end
