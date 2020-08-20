class CartsController < ApplicationController
  before_action :require_login

  def create
  end

  def show
    @user = User.find(params[:user_id])
    @cart_total ||= 0
    @user.cart.products.each do |product|
      @cart_total += (product.price * product.cart_products.where(cart_id: @user.cart).first.quantity)
    end
  end

  def add
    cart = current_cart
    product = Product.find(params[:id])
  end

  private

end
