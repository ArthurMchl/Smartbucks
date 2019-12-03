class ProfilesController < ApplicationController
  def dashboard
    @vouchers    = current_user.vouchers
    @orders_paid = current_user.orders_paid
  end
end
