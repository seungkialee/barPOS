class OrderItemsController < ApplicationController

  def create
    @order = current_session
    @order.order_items.new(order_item_params)
    @order.save
    #flash[:message] = "Added to tab"
    session[:order_id] = @order.id
    redirect_to drinks_path
  end

  def update
    @order = current_session
    @order_items = @order.order_items.find_by(drink_id: order_item_params[:drink_id])
    @order_items.update(order_item_params)
  end





private

  def order_item_params
    params.require(:order_item).permit(:drink_id, :quantity)
  end
end
