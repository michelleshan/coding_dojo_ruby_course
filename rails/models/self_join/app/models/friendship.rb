class Friendship < ActiveRecord::Base
  belongs_to :user, class_name: 'User'
  belongs_to :friend, foreign_key: 'user_id'
end
