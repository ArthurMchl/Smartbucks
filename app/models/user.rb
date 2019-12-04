class User < ApplicationRecord
  has_many :orders
  has_many :vouchers
  has_many :notifications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def orders_paid
    Order.where("user_id = ? AND state = ?", self.id, "paid")
  end
end
