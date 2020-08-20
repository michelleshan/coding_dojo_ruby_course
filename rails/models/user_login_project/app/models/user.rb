class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: {message: 'First and last name are required'},length: {minimum: 2}
    validates :email_address, presence: {message: 'Email address is required'}
    validates :age, presence: true, numericality: {greater_than_or_equal_to: 10, less_than: 150}
end
