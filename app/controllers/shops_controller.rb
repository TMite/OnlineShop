class ShopsController < ApplicationController
  def index
    puts session[:order_id]
    # if @order.id == nil
    #   puts "NO ID"

    # end
    @products = Product.all
  end

  def show
    # if @order.id == nil
    #   puts "No ID"
    #   puts @order.id
    # end
    @order_item = current_order.order_items.new
    @product = Product.find(params[:id])
  end



  private

  
end
