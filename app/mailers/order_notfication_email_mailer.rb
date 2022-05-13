class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order, name, email)
        @order = order.order_items
        @order_total = order.subtotal
        @name = name
        @email = email
        #attachments['Logo.jpg'] = File.read("#{Rails.root.to_s + '/app/assets/images/Logo.jpg'}")
        mail(to: email, subject: 'Email Test')
    end
end
