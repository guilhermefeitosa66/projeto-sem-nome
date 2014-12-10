class FunctionUserProject < ActiveRecord::Base
  belongs_to :function
  belongs_to :user
  belongs_to :project
  # attr_accessible :title, :body
end
