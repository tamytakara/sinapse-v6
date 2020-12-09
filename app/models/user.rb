require 'bcrypt'
class User < ActiveRecord::Base
    include BCrypt
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    validates :email, presence: true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    validates :password_hash, presence: true
    validates :type, presence: true

    before_save :emailDownCase

    has_many :votos, :dependent => :delete_all
    
    def password
        @password ||= Password.new(password_hash)
    end
    
    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end

    def emailDownCase
        self.email = email.downcase
    end

    def functionTest
        true
    end
end