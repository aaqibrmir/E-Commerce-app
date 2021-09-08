class CartsController < ApplicationController
    skip_before_action :verify_authenticity_token
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
        render json: {success: true}
     end
end
