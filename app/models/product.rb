class Product < ApplicationRecord
    validates :title, :price, presence: true
    validates_numericality_of :price, greater_than: 0
end
