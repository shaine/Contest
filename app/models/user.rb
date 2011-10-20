class User < ActiveRecord::Base
  validates :username, :presence => true,
                       :uniqueness => true,
                       :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :password, :confirmation => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true, :on => 'create'
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  
  HUMAN_ATTRIBUTES = {  
    :username => "Email"
  }  

  def self.human_attribute_name(attribute, options = {})
    HUMAN_ATTRIBUTES[attribute] || super  
  end
end
