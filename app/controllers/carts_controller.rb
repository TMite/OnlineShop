class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
    gon.finalPrice = current_order.subtotal
    
  end
end
