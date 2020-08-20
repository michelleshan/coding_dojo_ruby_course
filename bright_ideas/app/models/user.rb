class User < ActiveRecord::Base
  has_secure_password
  has_many :ideas, dependent: :destroy
  has_many :likes
  has_many :likes_received, through: :likes, source: :idea

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :alias, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true
  validates :password, presence: true, confirmation: true, on: :create, length: {minimum: 8}

  before_save :downcase_email

  private
  def downcase_email
    self.email.downcase!
  end
  
end
