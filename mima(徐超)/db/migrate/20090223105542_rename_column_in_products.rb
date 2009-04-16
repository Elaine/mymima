class RenameColumnInProducts < ActiveRecord::Migration
  def self.up
  rename_column :products, :address, :added_description
  end

  def self.down
  end
end
