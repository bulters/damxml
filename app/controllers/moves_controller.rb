class MovesController < ApplicationController
  def new
    @problem = Problem.find params[:problem_id]
    @move = Move.new
    render :layout => false
  end
  
  def create
    @move = Move.new params[:move]
    @problem = Problem.find params[:problem_id]
    @move.problem = @problem
    @move.save
    redirect_to problem_path(@problem)
  end
  
  def edit
    @problem = Problem.find params[:problem_id]
    @move = Move.find params[:id]
  end
  
  def update
    @problem = Problem.find params[:problem_id]
    @move = Move.find params[:id]
    @move.update_attributes params[:move]
    @move.save
    redirect_to problem_path(@problem)
  end
  
  def destroy
    @problem = Problem.find params[:problem_id]
    @move = Move.find params[:id]
    @move.destroy
    redirect_to problem_path(@problem)
  end
  
  def sort
    params[:moves].each_with_index do |id, index|
      Move.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
end
