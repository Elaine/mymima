class AddReplyAnswer < ActiveRecord::Migration
  def self.up
    add_column :replies, :status, :boolean , :default => false
  end

  def self.down
    remove_column :replies, :status
  end
end
