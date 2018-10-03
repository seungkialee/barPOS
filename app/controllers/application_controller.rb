class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_session

  def current_session
    
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_user
    if session[:login_id]
      Login.find(session[:login_id])
    else
      Login.new
    end
  end



end
