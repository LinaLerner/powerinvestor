class OrdersController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    order = Order.create(project: project, amount: params[:amount_cents], state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end

  def index
    @orders = Order.where(user: current_user)
  end
end
