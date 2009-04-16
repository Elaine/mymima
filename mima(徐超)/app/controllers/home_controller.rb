class HomeController < ApplicationController
  def index
    @categories = Category.find(:all, :conditions => {:parent_id => nil}, :order => 'name desc')
  end

end
