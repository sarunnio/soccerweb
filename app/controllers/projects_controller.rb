class ProjectsController < ApplicationController
  def new
    @project = Project.new
    3.times { @project.tasks.build }
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Successfully created project."
      redirect_to projects_path
    else
      render :action => 'new'
    end
  end
end