class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @order_item = current_session.order_items.new
  end
end
