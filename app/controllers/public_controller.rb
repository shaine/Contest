class PublicController < ApplicationController
  def home
    if flash[:user]
      @user = flash[:user]
    else
      @user = User.new
    end
    
    render :private
  end

end
