class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @order = current_session
  end
end
