class ProductsController < ApplicationController
  before_action :require_login
  def index
    @user = User.find(session[:user_id])
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to new_product_path
    end
  end

  def show
    @product = Product.find(params[:id])
    @user = current_user
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to edit_product_path(@product)
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.user == current_user
      @product.destroy
      redirect_to products_path
    else
      flash[:errors] = ["You can only delete your own listed items"]
      redirect_to products_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :category, :quantity, :price, :photo, :user_id)
  end
end
