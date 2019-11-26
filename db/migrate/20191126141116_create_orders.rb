class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :price_cents
      t.references :user, foreign_key: true
      t.references :voucher, foreign_key: true

      t.timestamps
    end
  end
end
