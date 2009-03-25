class Problem < ActiveRecord::Base
  has_many :moves

  acts_as_list
  validates_presence_of :number
  validates_numericality_of :number
end
