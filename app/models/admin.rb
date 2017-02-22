require 'bcrypt'

class Admin < ActiveRecord::Base
  include BCrypt

  has_many :movie_theaters

  has_many :receipts

  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 8 }

  def self.authenticate(username, password)
    if user = Admin.find_by(username: username)
      if user.authenticate(password)
        return user
      end
    end
    nil
  end

end
