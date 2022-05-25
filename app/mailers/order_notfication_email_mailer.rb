class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order, name, email, address)
        @order = order.order_items
        @order_total = order.subtotal
        @name = name
        @email = email
        @address = address
        #attachments['Logo.jpg'] = File.read("#{Rails.root.to_s + '/app/assets/images/Logo.jpg'}")
        # @emails.each do |send|
        #     mail(to: send, subject: 'Email Test1')
        # end
        mail(to: email, subject: 'Order Summary')
        
    end
end
