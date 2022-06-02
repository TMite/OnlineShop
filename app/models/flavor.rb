class Flavor < ApplicationRecord
    belongs_to :product, optional: true
    belongs_to :order_item, optional: true
end
