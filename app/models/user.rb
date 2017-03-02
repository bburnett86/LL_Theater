require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 8 }

  def self.authenticate(email, password)
    if user = User.find_by(email: email)
      if user.authenticate(password)
        return user
      end
    end
    nil
  end
end
