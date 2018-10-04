class OrdersController < ApplicationController
  before_action :authorized?
  skip_before_action :authorized?, only: [:show, :ordered]

  def index
    @orders = Order.all
    render :layout => 'login'
  end
  def show
    @order = current_session
    @drinks = @order.drinks
  end

  def update

  end

  def ordered
    @order = Order.find(params[:id])
    @order.order_status_id = 2
    @order.save
    session.delete(:order_id)
    current_session
    redirect_to "/submitted"
  end

  def current_orders
    @current_orders = Order.where(order_status_id: 2)
    render :layout => 'login'
  end

  def finished
    @order = Order.find(params[:id])
    @order.order_status_id = 3
    @order.save
    redirect_to "/current_orders"
  end

  private
  def authorized?
    return head(:forbidden) unless session[:user_id]==4
  end
end
