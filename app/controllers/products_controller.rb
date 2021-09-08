class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @products = Product.all
     respond_to do |format|
         format.html # index.html.erb
         format.json { render json: @products }
      end
  end

  def add_to_cart
    cart = Cart.first
    cart.add_item(params[:product_id])
    render json: {success: true}
   # redirect_to carts_path
  end
  
end
