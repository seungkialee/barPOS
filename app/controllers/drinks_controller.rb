class DrinksController < ApplicationController
  before_action :require_login
  def index
    @drinks = Drink.all
    @order_item = current_session.order_items.new
  end

  private

def require_login
  return head(:forbidden) unless session.include? :user_id
end
end
