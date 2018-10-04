class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_session, :current_user, :log_in, :current_user, :logged_in?

  def current_session

    if session[:order_id]
      order = Order.find(session[:order_id])
      if order[:user_id] == session[:user_id]
        return order
      else
        Order.new(user_id: session[:user_id])
      end

    else
      Order.new(user_id: session[:user_id])
    end

  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end



end
