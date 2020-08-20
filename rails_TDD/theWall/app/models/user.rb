class User < ActiveRecord::Base
    has_many :messages
    validates :username, presence: {message: "Username is required"}, uniqueness: {message: "Username already exists"}, length: {minimum: 6, message: "Username must be greater than 5 characters"}
end
