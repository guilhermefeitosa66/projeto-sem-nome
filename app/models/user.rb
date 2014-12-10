class User < ActiveRecord::Base
  belongs_to :local
  attr_accessible :admin, :email, :name, :password, :schedule
end
