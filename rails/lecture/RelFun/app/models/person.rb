class Person < ActiveRecord::Base
    has_many :room_users
    has_many :rooms, through: :room_users
end
