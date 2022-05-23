class OrderController < ApplicationController

    def update
        current_order.update(order_params)
        redirect_to cart_path

    end

    private

    def order_params
        params.require(:order).permit(:name, :email, :address)
    end
end
