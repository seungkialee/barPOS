class CartsController < ApplicationController

  # def show
  #   @order = current_session
  #   @cart_id = @order.id
  #   @order_items = current_session.order_items
  # end

  def index
    @order = current_session
    @cart_id = @order.id
    @order_items = current_session.order_items
  end
  
end
