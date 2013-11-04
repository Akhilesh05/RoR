class User < ActiveRecord::Base
  
  has_many :microposts
  
  #  #  #  #  #  #  #  Old way to do the same thing  #  #  #  #  #  #  #  #  #  #  #  #  #
  #                                                                                      #
  #  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i  #
  #  validates_presence_of :email, :name                                                 #
  #                                                                                      #
  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #
  
  validates :email,  format: { with: }
  validates :email, :name, presence: true
  
end
