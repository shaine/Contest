class UsersController < ApplicationController
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user] = @user
        
        redirect_to root_url
      else
        flash[:user] = @user
        format.html { redirect_to root_path }
      end
    end
  end

  def login
    if request.post?
      if session[:user] = User.authenticate(params[:login_user][:username], params[:login_user][:password])
        redirect_to root_url
      else
        flash[:warning] = "Login unsuccessful"
        
        redirect_to root_url
      end
    end
  end
  
  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to root_url
  end
end
