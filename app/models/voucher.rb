class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :price, :value, :end_date, :category, :bar_code, presence: true
  # Créer validates status avec Stripe !

  private

  def discount_rate(brand_id, end_date)
    vouchers_count = Voucher.where(brand_id: brand_id)

    if vouchers_count <= 100
      coef_vouchers = 0.006 * vouchers_count + 0.35
    else
      coef_vouchers = 0.95
    end

    days_remaining = (Date.today - end_date).to_i
    if days_remaining <= 90
      coef_days = - 0.006 * days_remaining + 0.956
    else
      coef_days = 0.35
    end

    (coef_vouchers + coef_days) / 2
  end

end
