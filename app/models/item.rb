class Item < ApplicationRecord
  belongs_to  :genre
  has_many    :cart_items, dependent: :destroy
  has_many    :order_details, dependent: :destroy
  attachment  :image

  validates   :image,   presence: true
  validates   :name,    presence: true
  validates   :detail,  presence: true

  def with_tax_price
    # floor=切り捨て, ceil=切り上げ, round=四捨五入
    (price * 1.1).floor
  end
end
