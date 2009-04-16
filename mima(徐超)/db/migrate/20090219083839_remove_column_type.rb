class RemoveColumnType < ActiveRecord::Migration
  def self.up
    remove_column :categories, :type
  end

  def self.down
    add_column :categories, :type, :string
  end
end
