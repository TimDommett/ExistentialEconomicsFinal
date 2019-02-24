class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }, format: { with: VALID_EMAIL_REGEX }
  validates :email, presence: true, uniqueness: true
  has_many :articles
  has_secure_password
  before_save { self.email = email.downcase }


end
