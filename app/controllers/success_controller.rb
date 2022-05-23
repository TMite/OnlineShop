class SuccessController < ApplicationController
    after_action :remove_cart, only: [:index]
    def index
        @order = current_order
        @name = current_order.name
        @email = current_order.email
        @address = current_order.address
        gon.successRED = ENV['successred']
        OrderNotficationEmailMailer.notfication(@order, @name, @email, @address).deliver
        OrderNotficationEmailMailer.notfication(@order, @name, "tmitetmite2@gmail.com", @address).deliver
        
    end

    private

    def remove_cart
        current_order.order_items.delete_all
    end
end
