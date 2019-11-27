class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :brand

  validates :price, :value, :end_date, :category, :bar_code, presence: true
  # Créer validates status avec Stripe !
end
