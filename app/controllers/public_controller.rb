class PublicController < ApplicationController
  def home
    if flash[:user]
      @user = flash[:user]
    else
      @user = User.new
    end
    
    if logged_in?
      render :private
    end
  end

end
