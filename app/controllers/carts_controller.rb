class CartsController < ApplicationController
before_action :require_login
  # def show
  #   @order = current_session
  #   @cart_id = @order.id
  #   @order_items = current_session.order_items
  # end

  def index
    @order = current_session
    @cart_id = @order.id
    @order_items = current_session.order_items
    # @order_item = OrderItem.find(params[:id])
  end



  private

def require_login
  return head(:forbidden) unless session.include? :user_id
end

end
