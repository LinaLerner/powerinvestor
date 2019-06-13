class OrdersController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @order = Order.create(project: @project, amount: params[:amount_cents], state: 'pending', user: current_user)
    # render 'projects/show'
    redirect_to project_path(@project, order_id: @order.id)
  end

  def index
    @orders = Order.where(user: current_user).order('created_at desc')
    @orders_in_progress = @orders.select {|order| (order.project.amount_collected.to_f / order.project.amount_needed * 100).round != 100 }.sort{|a, b| b.created_at<=>a.created_at}
    @orders_finished = @orders.select {|order| (order.project.amount_collected.to_f / order.project.amount_needed * 100).round == 100 }
    @user = current_user
  end
end
