class Order < ApplicationRecord
  belongs_to  :customer
  has_many    :order_details, dependent: :destroy

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

  def order_items_total_price
    (total_price - 500).round
  end

  def order_items_total_amount
    self.order_items.sum(:amount)
  end

  after_create :move_cart_items
  after_update :check_order_detail

  private
  
  def move_cart_items
    cart_items_list = self.customer.cart_items.map do |cart_item|
      {
        item_id: cart_item.item_id,
        with_tax_price: cart_item.item.add_with_tax_price,
        amount: cart_item.amount
      }
    end
    self.order_details.create(cart_items_list)
    self.customer.cart_items.destroy_all
  end

  def check_order_details
    if self.order_details == "confirmed_payment"
      self.order_items.update_all(making_status: "waiting_for_payment")
    end
  end
end
