class OrdersController < ApplicationController
  def create
    voucher = Voucher.find(params[:voucher_id])
    order = Order.create!(voucher: voucher, amount: voucher.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: voucher.brand.name + voucher.id.to_s,
        images: [voucher.brand.logo],
        amount: voucher.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order, display_confirmation_message: true),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    @hide_navbar = true
  end

  private

  def vouchers_set_id
    Voucher.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:price_cents)
  end
end
