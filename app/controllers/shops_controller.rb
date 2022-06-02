class ShopsController < ApplicationController
  def index
    @order = current_order
    if @order.id == nil
      #render "success/show"
    end
    @products = Product.all
    @order_item = current_order.order_items.new
    
  end

  def show
    @order = current_order
    if @order.id == nil
      #render "success/show"
    end
    @products = Product.all
    @order_item = current_order.order_items.new
    @product = Product.find(params[:id])
    @flavors = Flavor.all.collect(&:name)
  end



  private

  
end
