require 'date'
class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def create
      @user = User.new
      @user.id=params[:user][:id]
      @user.username=params[:user][:username]
      @user.email=params[:user][:email]
      @user.password=params[:user][:password]
      @user.created_at=Date.parse('2017-02-27')
      @user.updated_at=Date.parse('2017-02-27')
      if @user.save
        flash[:notice] = "You signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end
      render "new"
  end
end