class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order, name)
        @order = order.order_items
        @order_total = order.subtotal
        @name = name
        mail(to: ENV['gmail_username'], subject: 'Email Test', content_type: 'text/html')
    end
end
