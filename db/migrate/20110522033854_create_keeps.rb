class CreateKeeps < ActiveRecord::Migration
  def self.up
    create_table :keeps do |t|
      t.string :title
      t.text :content
      t.integer :board_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :keeps
  end
end
