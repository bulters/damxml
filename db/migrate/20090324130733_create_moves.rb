class CreateMoves < ActiveRecord::Migration
  def self.up
    create_table :moves do |t|
      t.integer :problem_id
      t.integer :position
      t.integer :white_from
      t.integer :white_to
      t.integer :white_destroys
      t.integer :black_from
      t.integer :black_to
      t.integer :black_destroys
      t.timestamps
    end
  end

  def self.down
    drop_table :moves
  end
end
