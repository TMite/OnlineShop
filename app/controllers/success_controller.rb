class SuccessController < ApplicationController
    def index
        @order = current_order
        OrderNotficationEmailMailer.notfication(@order).deliver
        current_order.order_items.delete_all
    end
end
