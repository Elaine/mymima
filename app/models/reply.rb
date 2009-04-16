class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem, :counter_cache => true
end
