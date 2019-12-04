class StripeCheckoutSessionService
  def call(event)
    puts "-------------------"
    p event
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
    Notification.create!(
      user: order.voucher.user,
      viewed: false,
      )


      # flash[:notice] = 'Votre bon a été vendu !'
  end
end
