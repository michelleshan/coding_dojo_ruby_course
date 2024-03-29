class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users_that_like, through: :likes, source: :user

  validates :content, presence: true
end
