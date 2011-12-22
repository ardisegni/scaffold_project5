class User < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name
  has_many :photos
  has_many :comments
end
