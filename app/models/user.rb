require 'bcrypt'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

class User

  include DataMapper::Resource

  attr_accessor :password_confirmation
  attr_reader :password

  validates_confirmation_of :password
  validates_uniqueness_of :email

  property :id, Serial
  property :email, String
  property :password_digest, Text

  def password= (password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
