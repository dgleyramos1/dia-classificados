class User < ApplicationRecord
  EMAIL_FORMAT = /[^\$]@[^\$]/
  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: EMAIL_FORMAT}, uniqueness: true
end
