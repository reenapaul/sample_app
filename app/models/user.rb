class User < ActiveRecord::Base
<<<<<<< HEAD
	before_save { self.email = email.downcase }
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, length: { minimum: 6 }


    has_secure_password
=======
	#validates(:name, presence: true)
before_save { self.email = email.downcase }
has_secure_password
validates :password, length: { minimum: 6 }
>>>>>>> sign-up

end
