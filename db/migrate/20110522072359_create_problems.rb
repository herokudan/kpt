class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string :title
      t.text :content
      t.integer :board_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
