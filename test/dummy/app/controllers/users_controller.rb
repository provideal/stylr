class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    @user.valid?
    render :controller => :application, :action => :index
  end

end