class FunctionUserProject < ActiveRecord::Base
  belongs_to :function
  belongs_to :user
  belongs_to :project

  attr_accessible :function_id, :user_id, :project_id
end
