class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :introduction
  validates_uniqueness_of :name
  validates_numericality_of :price, :on => :create
  belongs_to :shop, :counter_cache => true
  belongs_to :category, :counter_cache => true
end
