class Order < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal
    after_initialize :set_defaults
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP} 
    def subtotal
        order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum
    end

    def set_defaults
        self.name = "John Doe"
        self.email = "johndoe@gmail.com"
        self.address = "1234 Road Dr"
        self.date = Date.today
    end

    private 

    def set_subtotal
        self[:subtotal] = subtotal
    end
end
