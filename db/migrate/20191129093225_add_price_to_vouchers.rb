class AddPriceToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_monetize :vouchers, :price, currency: { present: false }
  end
end
