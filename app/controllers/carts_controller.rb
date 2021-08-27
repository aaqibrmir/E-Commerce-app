class CartsController < ApplicationController
    
    def index      
      cart = Cart.first
      @cartitems = cart.products
      # render json: @cartitems
      # render json: @cartitems.as_json(only: [:title, :price])
      respond_to do |format|
         format.html # index.html.erb
         #format.xml  { render xml: @users }
         format.json { render json: @cartitems }
      end
    end 

      def remove_from_cart
        cart = Cart.first
        cart.remove_item(params[:product_id])  
        redirect_to carts_path
     end
end
