class Room < ActiveRecord::Base
    has_one :tv
    has_many :seats
    has_many :room_users
    has_many :persons, through: :room_users
end
