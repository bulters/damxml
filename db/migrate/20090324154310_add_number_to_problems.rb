class AddNumberToProblems < ActiveRecord::Migration
  def self.up
    add_column "problems", "number", :integer
  end

  def self.down
    remove_column "problems", "number"
  end
end
