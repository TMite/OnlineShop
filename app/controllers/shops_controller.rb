class ShopsController < ApplicationController
  def index
    puts session[:order_id]
    @products = Product.all
  end

  def show
    @order_item = current_order.order_items.new
    @product = Product.find(params[:id])
  end



  private

  
end
