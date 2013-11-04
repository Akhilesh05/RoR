class User < ActiveRecord::Base
  
  has_many :microposts, inverse_of: :user
  
  #  #  #  #  #  #  #  Old way to do the same thing  #  #  #  #  #  #  #  #  #  #  #  #  #
  #                                                                                      #
  #  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i  #
  #  validates_presence_of :email, :name                                                 #
  #                                                                                      #
  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #
  
  validates :email,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                               message: "Email address is not valid!!" }
                               
  validates :email, :name, presence: { message: "
  
  validates :email, uniqueness: { case_sensitive: false,
                                  message: %Q{Oops, looks like you've missed some important details} }
  
end
