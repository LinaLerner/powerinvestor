class OrdersController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    order = Order.create(project_ref: project.id, amount: params[:amount_cents], state: 'pending', user: current_user)
    respond_to do |format|
      format.html { redirect_to new_order_payment_path(order) }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end
end
