class OrderNotficationEmailMailer < ApplicationMailer
    def notfication(order, name, email)
        @order = order.order_items
        @order_total = order.subtotal
        @name = name
        @email = email
        @emails = [email, 'tmitetmite2@gmail.com']
        #attachments['Logo.jpg'] = File.read("#{Rails.root.to_s + '/app/assets/images/Logo.jpg'}")
        # @emails.each do |send|
        #     mail(to: send, subject: 'Email Test1')
        # end
        mail(to: email, subject: 'Email Test1')
        
    end
end
