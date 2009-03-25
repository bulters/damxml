class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.integer :position
      t.string :white
      t.string :black
      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
