class AddColumnToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :belongs_to, :string
  end

  def self.down
    remove_column :categories, :belongs_to
  end
end
