class OrdersController < ApplicationController

  def show
    @order = current_session
    @drinks = @order.drinks
  end

  def update
    raise params.inspect
  end

  def ordered
    @order = Order.find(params[:id])
    @order.order_status_id = 2
    @order.save
    redirect_to "/submitted" 
  end

end
