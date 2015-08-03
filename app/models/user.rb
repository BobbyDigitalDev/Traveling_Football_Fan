class User < ActiveRecord::Base
	self.has_secure_password()
  # The below happens automatically by calling has_secure_password
  # self.validates(:password, {confirmation: true})
  has_many :itineraries

end
