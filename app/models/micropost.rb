class Micropost < ActiveRecord::Base
  
  belongs_to :user
  
  # # # # # Validations starts here # # # # #
  
  validates_length_of :content, :maximum => 140
  validates_presence_of :content, :user_id
  # validates_numericality_of :user_id
  
end
