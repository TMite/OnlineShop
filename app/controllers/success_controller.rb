class SuccessController < ApplicationController
    def index
        @order = current_order
        OrderNotficationEmailMailer.notfication(@order).deliver_later
    end
end
