class User < ActiveRecord::Base
    validates :email, presence: true
    after_update :updated
    has_many :pets

    def updated
        puts "I was updated"
    end
end
