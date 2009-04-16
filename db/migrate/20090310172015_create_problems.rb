class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.integer :user_id
      t.integer :problem_category_id
      t.string :title
      t.text :content
      t.integer :score
      t.integer :replies_count, :default => 0
      t.timestamps
    end
    add_index :problems, :problem_category_id
  end

  def self.down
    drop_table :problems
  end
end
