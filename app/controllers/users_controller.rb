require "annotate.rb"
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title= @user.name
  end
  def new
      @user = User.new
      @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      #Borra la clave de acceso, si ha habido algún error.
      @user.password = ""
      @title = "Sign up"
      render 'new'
    end
  end
end
