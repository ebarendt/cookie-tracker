class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to new_order_path
    else
      render 'new'
    end
  end

  private

    def order_params
      params.require(:order).permit(:girl_name, *Order::COOKIE_TYPES)
    end
end
