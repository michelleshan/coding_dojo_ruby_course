class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :joins
  has_many :users_attending, through: :joins, source: :user

  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :state, presence: true, length: {is:2}
  validate :future?

  private
  def future?
    unless self.date >= Date.today
      errors.add('Date', 'cannot be in the past')
    end
  end

end
