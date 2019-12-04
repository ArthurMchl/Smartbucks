require 'date'
class Voucher < ApplicationRecord
  monetize :price_cents

  CATEGORIES = ["Coffret Cadeau", "Avoir", "Chèque Cadeau", "Carte Cadeau"].sort
  belongs_to :user
  belongs_to :brand
  has_one :order

  validates :price, :value, :end_date, :category, :bar_code, presence: true
  validates :category, inclusion: CATEGORIES

  scope :top, -> { order("(price_cents - value * 100) / value asc") }
  scope :order_brand_asc, -> { joins(:brand).order("brands.name asc") }

  def pourcentage
    x = (price_cents / value)
    pourcent = ((1 - (x.fdiv(100))) * 100).round
    return pourcent
  end

  def sold?
    !self.order.nil?
  end
end
