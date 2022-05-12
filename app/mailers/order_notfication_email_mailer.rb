class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order, name, email)
        @order = order.order_items
        @order_total = order.subtotal
        @name = name
        @email = email
        mail(to: email, subject: 'Email Test', content_type: 'text/html')
    end
end
