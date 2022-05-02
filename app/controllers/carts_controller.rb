class CartsController < ApplicationController
  before_action :set_gon, only: [:show]
  #after_action :refresh_page, only: [:show]
  def show
    @order_items = current_order.order_items
    #gon.finalPrice = current_order.subtotal
  end

  private

  def set_gon
    gon.finalPrice = current_order.subtotal
  end
  
  def refresh_page
    redirect_to request.referrer
  end
end
