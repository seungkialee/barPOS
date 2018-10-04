class UsersController < ApplicationController
  before_action :authorized?

  def index
    render :layout => 'login'
  end

  private
  def authorized?
    return head(:forbidden) unless session[:user_id]==4
  end

end
