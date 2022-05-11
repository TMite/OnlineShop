class SuccessController < ApplicationController
    after_action :remove_cart, only: [:index]
    def index
        @order = current_order
        @name = current_order.name
        OrderNotficationEmailMailer.notfication(@order, @name).deliver
        
    end

    private

    def remove_cart
        current_order.order_items.delete_all
    end
end
