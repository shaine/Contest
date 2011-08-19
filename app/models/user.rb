class User < ActiveRecord::Base
  validates :url, :presence => true
end
