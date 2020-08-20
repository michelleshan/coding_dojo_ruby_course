class CartProductsController < ApplicationController
  def create
    @cart = Cart.find(params[:cart_id])
    @product = Product.find(params[:product_id])
    @existing_cart_product = CartProduct.where(product_id: @product.id, cart_id: @cart.id).first
    if @existing_cart_product
      # puts "IT ALREADY EXISTS"
      @existing_cart_product.increment(:quantity, 1)
      @existing_cart_product.save
      redirect_to products_path
    else
      @cart_product = @cart.cart_products.create(cart_product_params)
      redirect_to products_path
    end
    # if @cart_product.save
    #   redirect_to products_path
    # else
    #   flash[:errors] = @cart.errors.full_messages
    #   redirect_to products_path
    # end
  end

  def destroy
    cart_product = CartProduct.find(params[:id])
    cart_product.destroy
    redirect_to user_cart_path(current_user, current_user.cart)
  end

  private
  def cart_product_params
    params.require(:cart_product).permit(:product_id, :cart_id, :quantity)
  end
end
