class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order

  enum making_status: {
    cannot_start:         0,
    waiting_for_payment:  1,
    making:               2,
    completed:            3
  }

  def subtotal
    item.with_tax_price * amount
  end
end
