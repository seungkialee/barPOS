class OrdersController < ApplicationController

  def show
    @order = current_session
    @drinks = @order.drinks
  end

  def update
    
  end

  def ordered
    @order = Order.find(params[:id])
    @order.order_status_id = 2
    @order.save
    session.delete(:order_id)
    current_session
    redirect_to "/submitted"
  end

end
