class Pet < ActiveRecord::Base
  belongs_to :pettable, polymorphic: true
end
