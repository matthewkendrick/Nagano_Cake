class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  enum status: {
    waiting_for_payment:  0,
    confirmed_payment:    1,
    making:               2,
    preparing_shipment:   3,
    shipped:              4
  }

  enum payment_method: {
    credit_card:          0,
    transfer:             1
  }
end
