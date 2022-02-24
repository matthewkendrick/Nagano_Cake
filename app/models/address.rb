class Address < ApplicationRecord
  belongs_to :customer
  validates :name,        presence: true
  validates :address,     presence: true
  validates :postal_code, presence: true

  def full_address
    "〒" + postal_code + " " + address + " " + name
  end
end
