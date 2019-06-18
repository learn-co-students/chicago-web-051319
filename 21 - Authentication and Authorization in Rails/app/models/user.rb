class User < ApplicationRecord
  has_secure_password
  # def password=(user_password_string)
  #   pass_obj = BCrypt::Password.create(user_password_string)
  #   self.password_digest = pass_obj
  # end
  #
  # def password
  #   BCrypt::Password.new(self.password_digest)
  # end
  #
  # def authenticate(password_attempt)
  #   if self.password == password_attempt
  #     return true
  #   else
  #     return false
  #   end
  # end
  #
  # def self.authenticate(name_attempt, pass_attempt)
  #   user = User.find_by(username: name_attempt)
  #   if user && user.password == pass_attempt
  #     return user
  #   end
  #   nil
  # end
end
