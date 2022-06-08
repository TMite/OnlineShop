module ApplicationHelper
    
    def current_order
        if !session[:order_id].nil?
            puts "existing session"
            Order.find(session[:order_id])
        else
            puts "New Order"
            Order.new
        end       
    end
    

end
