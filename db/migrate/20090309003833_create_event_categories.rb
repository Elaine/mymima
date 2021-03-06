class CreateEventCategories < ActiveRecord::Migration
  def self.up
    create_table :event_categories do |t|
      t.string :name
      t.timestamps
    end
    add_index :event_categories, :name
  end

  def self.down
    drop_table :event_categories
  end
end
