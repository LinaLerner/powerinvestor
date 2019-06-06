class InvestmentsController < ApplicationController
  def index
    @investments = Investment.where(user: current_user)
  end

  def create
    @investment = Investment.new
    @project = Project.find(params[:project_id])
    @investment.project = @project
    @investment.user = current_user
    @investment.save
  end
end
