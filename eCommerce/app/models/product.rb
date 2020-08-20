class Product < ActiveRecord::Base
    belongs_to :user
    belongs_to :cart
    has_many :buyers, through: :carts, source: :user
    has_many :cart_products 
    has_many :carts, through: :cart_products
    mount_uploader :photo, PhotoUploader

    validates :name, :description, :category, presence: true
    validates :quantity, presence: true, numericality: { greater_than: 0 , less_than_or_equal_to: 100000}
    validates :price, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 10000}
    # validates :photo, presence: true, on: :create
end
