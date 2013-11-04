class Micropost < ActiveRecord::Base
  
  belongs_to :user
  
  # # # # # Validations starts here # # # # #
  
  validates_length_of :content, :maximum => 140
  validates_presence_of :content, :user_id, :user # :user will check whether the specified user exists in the users table
  validates_numericality_of :user_id, :only_integer => true
  
end
