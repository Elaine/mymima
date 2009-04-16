class AddColumnToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :category_parent, :integer
  end

  def self.down
    remove_column :products, :category_parent
  end
end
