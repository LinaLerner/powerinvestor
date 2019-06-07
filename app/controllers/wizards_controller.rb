class WizardsController < ApplicationController
  before_action :find_user

  def step1
    @categories = Category.all
  end

  def step2
    @locations = Location.all
  end

  def step3
    @company_types = CompanyType.all
  end

  private

  def find_user
    @user = current_user
  end
end
