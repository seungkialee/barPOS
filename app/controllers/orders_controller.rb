class OrdersController < ApplicationController

  def show
    @order = current_session
    @drinks = @order.drinks
  end

end
