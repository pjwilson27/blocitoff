class UsersController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
  end
  
  #def show
   # @user = User.find(params[:email])
  #end
end
