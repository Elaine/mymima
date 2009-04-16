class RepliesController < ApplicationController
  layout 'problems'
  def new
    @problem = Problem.find(params[:problem_id])
    @reply = @problem.replies.new
  end

  def create
    @problem = Problem.find(params[:problem_id])
    @reply = @problem.replies.new(params[:reply])
    @reply.user = logged_in_user
    @reply.save
    redirect_to problem_path(:id => @problem.id)
  end

  def edit
    @problem = Problem.find(params[:problem_id])
    @reply = Reply.find(params[:id])
  end

  def update
    @reply = Reply.find(params[:id])
    if @reply.update_attributes(params[:reply])
      redirect_to problem_path(:id => @reply.problem.id)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @problem = Problem.find(params[:problem_id])
    @reply = @problem.replies.find(params[:id])
    @reply.destroy
    redirect_to problem_path(:id => @problem)
  end

  def set_answer

  end
end
