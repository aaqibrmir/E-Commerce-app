class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def add_to_cart
    cart = Cart.first
    cart.add_item(params[:product_id])
    redirect_to carts_path
  end
  
end
