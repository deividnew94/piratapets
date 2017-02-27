class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  def authenticate_user
    unless session[:user_id]
      redirect_to(:controller => 'web', :action => 'index')
      return false
    else
      # set current_user by the current user object
      @current_user = User.find session[:user_id]
      @current_rol = Rol.find session[:rol_id]
      return true
    end
  end

  #This method for prevent user to access Signup & Login Page without logout
  def save_login_state

    if session[:user_id] && session[:rol_id]
      @current_rol =Rol.find session[:rol_id]
      if(@current_rol[:Tipo]=="A")
        redirect_to(:controller => 'web',:action => 'administrador')
      elsif(@current_rol[:Tipo]=="D")
         redirect_to(:controller => 'web',:action => 'doctor')
       else
         redirect_to(:controller => 'web',:action => 'usuario')
       end
      return false
    else
      return true
    end
  end
end
