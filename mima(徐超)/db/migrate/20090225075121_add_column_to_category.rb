class AddColumnToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :shops_count, :integer
    add_column :categories, :products_count, :integer

  end

  def self.down
    remove_column :categories, :shops_count
    remove_column :categories, :products_count
  end
end
