class Dog < ActiveRecord::Base
    has_many :pets, as: :pettable
end
