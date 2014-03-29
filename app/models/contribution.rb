class Contribution < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :user_id, :amount, :contribution_date
  belongs_to :user
  
end
