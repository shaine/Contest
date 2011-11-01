class PublicController < ApplicationController
  def home
    if flash[:user]
      @user = flash[:user]
    else
      @user = User.new
    end
    
    if logged_in?
      @user = current_user
      
      render :private
    end
  end

end
