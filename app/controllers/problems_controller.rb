class ProblemsController < ApplicationController

  def userproblems
    @user = User.find(params[:user_id])
    @problems = @user.problems.find(:all, :order => 'created_at DESC', :limit => 6)
    @replies = @user.replies.find(:all, :order => 'created_at DESC', :limit => 6)
  end

  def index
    @categories = ProblemCategory.find(:all, :conditions => { :parent_id => nil})
    @problems = Problem.find(:all, :order => 'created_at desc', :limit => 8)
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(params[:problem])
    @problem.user = logged_in_user
    @problem.end_at = Time.now + 10.days
    @problem.save
    redirect_to problems_path
  end

  def show
    #@categories = ProblemCategory.find(:all, :conditions => { :parent_id => nil})
    @problem = Problem.find(params[:id])
    @categories = ProblemCategory.find_all_by_parent_id(@problem.problem_category.id)
    @replies = @problem.replies
  end

end
