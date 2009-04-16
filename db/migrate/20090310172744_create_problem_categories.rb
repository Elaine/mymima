class CreateProblemCategories < ActiveRecord::Migration
  def self.up
    create_table :problem_categories do |t|
      t.integer :parent_id
      t.string :name
      t.timestamps
    end
    add_index :problem_categories, :name
    add_index :problem_categories, :parent_id
  end

  def self.down
    drop_table :problem_categories
  end
end
