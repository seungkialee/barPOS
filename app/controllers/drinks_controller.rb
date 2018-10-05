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

  def new

    @drink = Drink.new
    render :layout => false
  end

  def create
    # raise params.inspec
    session.delete(:order_id)
    @drink = Drink.new(drink_params)
      if @drink.valid?
        @drink.save
        redirect_to new_drink_path
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def drink_params
    params.require(:drink).permit(:category, :name, :price, :img_url, :active, :info)
  end
end
