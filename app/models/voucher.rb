require 'date'
class Voucher < ApplicationRecord

  CATEGORIES = ["Coffret Cadeau", "Avoir", "Chèque Cadeau", "Carte Cadeau"].sort
  belongs_to :user
  belongs_to :brand

  validates :price, :value, :end_date, :category, :bar_code, presence: true
  # Créer validates status avec Stripe !
  validates :category, inclusion: CATEGORIES

  def pourcentage
    x = ((price * 100) / value)
    pourcent = ((1 - (x.fdiv(100))) * 100).round
    return pourcent
  end
end
