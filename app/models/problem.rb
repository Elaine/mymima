class Problem < ActiveRecord::Base
  belongs_to :problem_category
  has_many :replies, :dependent => :destroy
  belongs_to :user, :counter_cache => true
end
