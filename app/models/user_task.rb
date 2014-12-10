class UserTask < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  # attr_accessible :title, :body
end
