class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :price, :value, :end_date, :category, :bar_code, presence: true
  # Créer validates status avec Stripe !

  private

  def day(time_in_date)
    @in_nims = 60
    @in_hours = 60
    @in_days = 24
    time_in_date / @in_nims / @in_hours / @in_days
  end

  def value_pourcent(date_diff, voucher_count)
    @delta_count_voucher        = 0.35
    @delta_price                = 0.35
    @reduction = (((voucher_count * @delta_count_voucher) + 35) + ((date_diff * @delta_price) + 35)) / 2
    if @reduction > 95
      @reduction = 95
    elsif @reduction < 35
      @reduction = 35
    else
      @reduction = @reduction
    end
  end

  def estimate_price(voucher_price, value_pourcent_vouchers)
    voucher_price + value_pourcent_vouchers
  end

  def estimation
    @voucher_name               = Voucher.brand(params[:name])
    @voucher_expiration         = Voucher(params[:end_date])
    @voucher_price              = Voucher(params[:price])
    @voucher_count              = Voucher.all.brand.where(name: @voucher_name).count
    @date_diff                  = day(@voucher_expiration - Time.now)
    @value_pourcent_vouchers    = value_pourcent(@date_diff, @voucher_count)
    @estime_price               = estimate_price(voucher_price, @value_pourcent_vouchers)
  end
end
