class User < ActiveRecord::Base
  
  has_many :microposts
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_presence_of :email, :name
  
end
