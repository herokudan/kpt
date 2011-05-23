class CreateTries < ActiveRecord::Migration
  def self.up
    create_table :tries do |t|
      t.string :title
      t.text :content
      t.integer :board_id
      t.integer :user_id
      t.date :due_date
      t.integer :assigned_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tries
  end
end
