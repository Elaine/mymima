class CreateReplies < ActiveRecord::Migration
  def self.up
    create_table :replies do |t|
      t.integer :problem_id
      t.integer :user_id
      t.text :content
      t.timestamps
    end
    add_index :replies, :problem_id
    add_column :users, :problems_count, :integer, :default => 0
    add_index :problems, :user_id
  end

  def self.down
    drop_table :replies
  end
end
