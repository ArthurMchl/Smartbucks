class ProfilesController < ApplicationController
  def dashboard
    @vouchers = Voucher.where(user_id: @user)
    @user = current_user
  end
end
