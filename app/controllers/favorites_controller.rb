class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user)
  end

  def create
    @favorite = Favorite.new
    @project = Project.find(params[:project_id])
    @favorite.project = @project
    @favorite.user = current_user
  end
end
