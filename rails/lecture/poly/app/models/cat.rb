class Cat < ActiveRecord::Base
    has_many :pets, as: :pettable
end
