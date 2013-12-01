class User < ActiveRecord::Base
	has_secure_password 
	attr_accessible :name, :password, :password_confirmation
	#validates :name, presence: true, uniqueness: true 
  validates_presence_of :password, :on => :create
end
