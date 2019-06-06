class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @categories = Category.all
    @project_categories = ProjectCategory.all
  end

  def show
    @project = Project.find_by_id(params[:id])
  end
end
