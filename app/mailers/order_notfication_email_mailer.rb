class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order)
        @order = order.order_items
        @order_total = order.subtotal
        mail(to: ENV['gmail_username'], subject: 'Email Test', content_type: 'text/html')
    end
end
