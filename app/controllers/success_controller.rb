class SuccessController < ApplicationController
    after_action :remove_cart, only: [:index]
    def index
        @order = current_order
        @name = current_order.name
        @email = current_order.email
        @address = current_order.address
        @date = current_order.date
        gon.successRED = ENV['successred']
        OrderNotficationEmailMailer.notfication(@order, @name, @email, @address, @date).deliver
        OrderNotficationEmailMailer.notfication(@order, @name, ENV['gmail_username'], @address, @date).deliver
        
    end

    private

    def remove_cart
        current_order.order_items.delete_all
    end
end
