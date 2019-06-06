class WizardsController < ApplicationController
  before_action :find_user

  def step1
  end

  def step2
  end

  def step3
  end

  private

  def find_user
    @user = current_user
  end
end
