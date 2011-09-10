class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :password, :confirmation => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true, :on => 'create'
end
