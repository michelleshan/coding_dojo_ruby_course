class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
end
