class DrinksController < ApplicationController
  before_action :require_login


  def index
    @drinks = Drink.all
    @order_item = current_session.order_items.new
  end

  def beer
    @beers = Drink.where(category: "Beer")
        @order_item = current_session.order_items.new
  end

  def liquor
    @liquors = Drink.where(category: "Liquor")
    @order_item = current_session.order_items.new
  end

  def wine
    @wines = Drink.where(category: "Wine")
    @order_item = current_session.order_items.new
  end

  def cocktail
    @cocktails = Drink.where(category: "Cocktail")
    @order_item = current_session.order_items.new
  end

  private

def require_login
  return head(:forbidden) unless session.include? :user_id
end
end
