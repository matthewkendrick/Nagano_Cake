class Item < ApplicationRecord
  belongs_to  :genre
  has_many    :cart_items, dependent: :destroy
  has_many    :order_details, dependent: :destroy
  attachment  :image

  validates   :image,   presence: true
  validates   :name,    presence: true
  validates   :detail,  presence: true
end
