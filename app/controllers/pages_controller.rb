class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @vouchers_best_marks = Voucher.where(name: "Decathlon")
    @vouchers_top_deals = Voucher.where("SELECT * FROM vouchers
                                        price AS p, value AS v
                                        ORDER BY p - v ASC")
  end
end
