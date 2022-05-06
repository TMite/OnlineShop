class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order)
        @order = order.order_items
        mail(to: ENV['gmail_username'], subject: 'Email Test')
    end
end
