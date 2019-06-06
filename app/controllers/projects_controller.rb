class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by_id(params[:id])
    @marker = {
        lat: @project.latitude,
        lng: @project.longitude
       }
  end
end
