class Brand < ApplicationRecord
  has_many :vouchers

  def logo_horizontal?
    ['Decathlon', 'Smartbox', 'Ikea', 'Buffalo Grill', 'Cultura'].include?(self.name)
  end
end
