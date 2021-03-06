class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  def create
    user = User.authenticate(params[:session][:username],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid username/password combination."
      @title = "Sign in"  
      render 'new'
    else 
      sign_in user
      redirect_to logged_in_path
    end
  end
end
