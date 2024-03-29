class User < ApplicationRecord
  has_secure_password
  has_many :posts, foreign_key: :author_id

  validates :username, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, uniqueness: true, presence: true
  validates :password, length: { minimum: 8, maximum: 20 }
end
