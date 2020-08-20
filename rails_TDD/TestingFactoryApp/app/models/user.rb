class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: {message: "First name can't be blank"}
    validates :last_name, presence: {message: "Last name can't be blank"}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: {message: "Email can't be blank"}, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
end
