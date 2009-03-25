class Move < ActiveRecord::Base
  belongs_to :problem
  acts_as_list
end
