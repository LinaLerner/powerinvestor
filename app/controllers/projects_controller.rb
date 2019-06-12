class ProjectsController < ApplicationController
  def index
    @categories = Category.all
    @projects = Project.all.all.order("rating DESC")
    # @categories.each do |category|
    #   name = category.title
    #   if params[name].present?
    #     @projects = Project.category_search(params[name])
    #   end
    # end
    if params[:company_type].present?
      @projects = @projects.company_type_search(params[:company_type])
    end

    if params[:location_type].present?
      @projects = @projects.location_search(params[:location])
    end

    if params[:category].present?
      pro = params[:category].map do |cat|
        @projects.category_search(cat)
      end
      @projects = pro.flatten

    end
    # if params[:invest_type].present?
    #   @projects = Project.invest_search(params[:invest])
    # end
    respond_to do |format|
        format.html { render 'index' }
        format.js  # <-- idem
    end
    @categories = Category.all
    @project_categories = ProjectCategory.all
  end


  def show
    @project = Project.find_by_id(params[:id])
    @marker = {
        lat: @project.latitude,
        lng: @project.longitude
       }
  end
end


private
  def project_params
    params.require(:project).permit(:search)
  end
