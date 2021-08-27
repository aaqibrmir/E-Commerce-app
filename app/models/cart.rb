class Cart < ApplicationRecord
    has_many :cart_items
    has_many :products, through: :cart_items


    def add_item(product_id)
        product = Product.find(product_id)
        # cart = Cart.first
        self.products << product
    
    end
    
    def remove_item(product_id)
        cartitem = CartItem.where(product_id: product_id).first
        cartitem.destroy
    end
end
