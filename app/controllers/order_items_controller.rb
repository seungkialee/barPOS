class OrderItemsController < ApplicationController

  def create
    @order = current_session
    drink_id = order_item_params[:drink_id]
    quantity = order_item_params[:quantity]
    @order_item = @order.order_items.find_by(drink_id: drink_id)
    if @order_item
      @order_item[:quantity] += quantity.to_i
      @order_item.save
    else
      @order.order_items.new(order_item_params)
    end
      @order.save
      #flash[:message] = "Added to tab"
      session[:order_id] = @order.id
      redirect_to drinks_path
  end

  def update
    @order = current_session
    @order_items = @order.order_items.find_by(drink_id: order_item_params[:drink_id])
    @order_items.update(order_item_params)
    redirect_to carts_path
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to carts_path
  end



private

  def order_item_params
    params.require(:order_item).permit(:drink_id, :quantity)
  end
end
