class StripeCheckoutSessionService
  def call(event)
    puts "-------------------"
    p event
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
  end
end
