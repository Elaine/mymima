class AddColumnToShops < ActiveRecord::Migration
  def self.up
    add_column :shops, :category_parent, :integer
  end

  def self.down
    remove_column :shops, :category_parent
  end
end
