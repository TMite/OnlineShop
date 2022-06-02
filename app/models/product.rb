class Product < ApplicationRecord
    has_many :order_items
    has_many :flavors
    accepts_nested_attributes_for :flavors
    has_one_attached :image
end
