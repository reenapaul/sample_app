class User < ActiveRecord::Base
	#validates(:name, presence: true)
before_save { self.email = email.downcase }
has_secure_password
validates :password, length: { minimum: 6 }

end
