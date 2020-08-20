class User < ActiveRecord::Base
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, presence: true
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true
  validates :password, presence: true, on: :create

  before_save :downcase_email

  private
  def downcase_email
    self.email.downcase!
  end

end
