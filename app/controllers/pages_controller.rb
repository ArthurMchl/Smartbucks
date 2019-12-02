class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @vouchers = Voucher.all
    @vouchers_brand = Voucher.order_brand_asc
    @vouchers_top = Voucher.top
  end
end
