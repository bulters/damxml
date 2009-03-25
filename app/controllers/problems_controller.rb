class ProblemsController < ApplicationController
  before_filter :load_problem, :except => [:index, :new, :create]
  
  def index
    @problems = Problem.all
    respond_to do |wants|
      wants.html
      wants.xml
    end
  end
  
  def show
  
  end
  
  def new
    @problem = Problem.new
  end
  
  def create
    @problem = Problem.new params[:problem]
    if @problem.save 
      # TODO: REST
      redirect_to problems_path
    else
      # TODO: Error handling + REST
    end
  end
  
  def edit
    
  end
  
  def update
    @problem.update_attributes params[:problem]
    if @problem.save
      # TODO: REST
      redirect_to problems_path
    else
      # TODO: Error handling + REST
    end
  end
  
  def destroy
    @problem.destroy
    redirect_to problems_path
  end
  
  def sort
    params[:problems].each_with_index do |id, index|
      Problem.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
  
  private
  def load_problem
    @problem = Problem.find params[:id]
  end

end
