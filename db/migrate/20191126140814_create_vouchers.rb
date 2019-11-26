class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.integer :value
      t.integer :price
      t.date :end_date
      t.string :category
      t.string :bar_code
      t.string :status
      t.references :user, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
