class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @voucher = vouchers_set_id
    @order.voucher = @voucher
    if order.save
      redirect_to voucher_path(@voucher)
    else
      render :create
    end
  end

  private

  def vouchers_set_id
    Voucher.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:price_cents)
  end
end
