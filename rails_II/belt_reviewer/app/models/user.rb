class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  has_many :comments, through: :events, dependent: :destroy
  has_many :joins, dependent: :destroy
  has_many :events_joined, through: :joins, source: :event
  
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :location, presence: true
  validates :state, presence: true, length: {is:2}
  validates :password, presence: true, on: :create
  before_save :downcase_email

  private
  def downcase_email
    self.email.downcase!
  end
end
