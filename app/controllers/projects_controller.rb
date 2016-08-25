class ProjectsController < ApplicationController
  # requires authorization to create/modify/delete projects
  before_action :require_user, except: [:index, :show]

  # showcases all projects
  def index
    @projects = Project.all
  end

  # Shows one specific project
  def show
    @project = Project.find(params[:id])
    @page_title = "Project: " + @project.title
  end

  # edits an existing project
  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  # deletes existing project
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to action: 'index'
  end

  # creates new project
  def new
    @page_title="New Project"
    @project = Project.new
  end

  # post project to table
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private

  # strong parameter support
  def project_params
    params.require(:project).permit(:title, :description, :url)
  end
end
