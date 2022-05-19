class SuccessController < ApplicationController
    after_action :remove_cart, only: [:index]
    def index
        @order = current_order
        @name = current_order.name
        @email = current_order.email
        gon.SuccessRED = "social"
        OrderNotficationEmailMailer.notfication(@order, @name, @email).deliver
        OrderNotficationEmailMailer.notfication(@order, @name, "tmitetmite2@gmail.com").deliver
        
    end

    private

    def remove_cart
        current_order.order_items.delete_all
    end
end
