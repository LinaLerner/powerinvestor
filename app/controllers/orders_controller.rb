class OrdersController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    @order = Order.create(project: project, amount: params[:amount_cents], state: 'pending', user: current_user)
    redirect_to new_order_payment_path(@order)

  end

  def index
    @orders = Order.where(user: current_user)
    @orders_in_progress = @orders.select {|order| (order.project.amount_collected.to_f / order.project.amount_needed * 100).round != 100 }
    @orders_finished = @orders.select {|order| (order.project.amount_collected.to_f / order.project.amount_needed * 100).round == 100 }
  end
end
