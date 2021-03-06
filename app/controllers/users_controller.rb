class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  def logout
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.deliver_registration_confirmation(@user)
      flash[:success] = "Welcome to the SVL!"	    
      render :action => "new"
    else
      render "new"
    end
  end
  def new
    @user = User.new
    render "new"
  end
end


