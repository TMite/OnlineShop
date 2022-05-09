class SuccessController < ApplicationController
    after_action :remove_cart, only: [:index]
    def index
        @order = current_order
        OrderNotficationEmailMailer.notfication(@order).deliver
        
    end

    private

    def remove_cart
        current_order.order_items.delete_all
    end
end
