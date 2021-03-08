class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: { minimum: 6, maximum: 20 }, on: :create
  validates :email, uniqueness: { case_sensitive: false }
  validates :name, presence: true

  validates :password, confirmation: true
end
