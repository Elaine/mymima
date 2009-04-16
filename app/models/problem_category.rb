class ProblemCategory < ActiveRecord::Base
  has_many :problems, :dependent => :destroy
end
