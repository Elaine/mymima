class AddProblemEndDate < ActiveRecord::Migration
  def self.up
    add_column :problems, :end_at, :datetime
  end

  def self.down
    remove_column :problems, :end_at
  end
end
