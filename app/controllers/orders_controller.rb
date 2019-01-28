class OrdersController < ApplicationController
  def index
    redirect_to new_order_path
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to new_order_path, notice: "Thank you. An order was created for #{@order.girl_name}."
    else
      render 'new'
    end
  end

  private

    def order_params
      types = Order::COOKIE_TYPES.flat_map { |type| [type, "#{type}_online"] }
      params.require(:order).permit(:girl_name, *types)
    end
end
