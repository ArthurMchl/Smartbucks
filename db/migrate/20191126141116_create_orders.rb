class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.monetize :amount, currency: { present: false}
      t.string :checkout_session_id
      t.string :state
      t.references :user, foreign_key: true
      t.references :voucher, foreign_key: true

      t.timestamps
    end
  end
end
