class User < ActiveRecord::Base
  has_secure_password
  has_many :products, dependent: :destroy
  has_one :cart, dependent: :destroy
  has_many :products_in_cart, through: :cart, source: :products


  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :state, presence: true, length: { minimum: 2 }
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true
  validates :password, presence: true, confirmation: true, on: :create, length: { minimum: 8 }
  validate :min_age?

  before_save :downcase_email, :downcase_username

  private
  def downcase_email
    self.email.downcase!
  end

  def downcase_username
    self.username.downcase!
  end

  def min_age?
    unless self.dob < 18.years.ago
      errors.add("Age", 'You must be 18 years or older to make an account')
    end
  end
  
end
