class ProfilesController < ApplicationController
  def dashboard
    @vouchers = current_user.vouchers
    @orders   = current_user.orders
  end
end
