class CartsController < ApplicationController
  before_action :set_gon, only: [:show]
  #after_action :refresh_page, only: [:show]
  def show
    @order = current_order
    if @order.id == nil
      flash[:notice] = 'Please add items to cart before viewing'
      redirect_to shops_path alert
    end   
    @order_items = current_order.order_items
    
    #gon.finalPrice = current_order.subtotal
  end

  private

  def set_gon
    gon.finalPrice = current_order.subtotal
    gon.url = ENV['sucessURL']
    gon.client_id = ENV['client_id']
  end
end
