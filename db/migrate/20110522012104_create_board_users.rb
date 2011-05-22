class CreateBoardUsers < ActiveRecord::Migration
  def self.up
    create_table "boards_users", :id => false do |t|
      t.integer :board_id
      t.integer :user_id

      #t.timestamps
    end
  end

  def self.down
    drop_table :boards_users
  end
end
