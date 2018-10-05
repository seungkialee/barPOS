class LoginsController < ApplicationController

  def new

    if session[:user_id]
      if session[:user_id] == 4
        redirect_to bartender_path
        return
      else
        redirect_to drinks_path
        return
      end
    else
      render :layout => 'login'
    end

  end




  def create
    user = User.find_by(username: params.require(:login).permit(:username)[:username])

    if user && user.authenticate(params.require(:login).permit(:password)[:password])
      session[:user_id] = user.id
      if session[:user_id] == 4
        redirect_to bartender_path
        return
      else
        redirect_to drinks_path
      end

    else
      redirect_to login_path
    end
  end

end
