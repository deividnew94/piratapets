class WebController < ApplicationController

  before_filter :authenticate_user, :except => [:index, :login, :login_attempt, :logout]
  before_filter :save_login_state, :only => [:index, :login, :login_attempt]

  def index
  end

  def administrador
  end

  def usuario
  end

  def doctor
  end

  def home
    #Home Page
  end

  def profile
    #Profile Page
  end

  def setting
    #Setting Page
  end

  def login
    session[:user_id] = nil
    session[:rol_id] = nil
    redirect_to :action => 'index'
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:rol_id] = authorized_user.rol_id
      @current_rol =Rol.find session[:rol_id]
      flash[:notice] = "Hola Bienvenido(a) de nuevo, #{authorized_user.username} has iniciado sesión como #{@current_rol[:Descripcion]}"
      if(@current_rol[:Tipo]=="A")
        redirect_to(:action => 'administrador')
      elsif(@current_rol[:Tipo]=="D")
        redirect_to(:action => 'doctor')
      else
        redirect_to(:action => 'usuario')
      end

    else
      flash[:notice] = "Usuario o contraseña invalido"
      flash[:color]= "invalid"
      render "index"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => 'index'
  end

end
