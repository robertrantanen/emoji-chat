class User < ApplicationRecord
  has_secure_password
  has_many :messages

  validates :username, uniqueness: true, length: { minimum: 3 }
end
