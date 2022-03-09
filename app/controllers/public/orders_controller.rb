class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.customer_id = current_customer.id
  end

  def log
    @order              = Order.new(order_params)
    @order.customer_id  = current_customer.id
    @cart_items         = CartItem.all
    @payment            = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
    @total              = (@payment + 500).to_s

    if params[:order][:select_address] == "0"
      @order.zip_code         = current_customer.postal_code
      @order.shipping_address = current_customer.address
      @order.shipping_name    = current_customer.full_name
    elsif params[:order][:select_address] == "1"
      address = Addresses.find(params[:order][:address_id])
      @order.zip_code         = address.postal_code
      @order.shipping_address = address.address
      @order.shipping_name    = address.name
    end
  end

  def thanks
  end

  # NOTE(以下コメントアウトしている部分によって注文完了画面に飛んだ)
  # NOTE(確認画面に遷移できていない？)
  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    # @order.save

    current_customer.cart_items.each do |cart_item|
      @order_detail                  = OrderDetail.new
      @order_detail.order_id         = @order.id
      @order_detail.item_id          = cart_item.item_id
      # @order_detail.order_price      = cart_item.item.with_tax_price
      @order_detail.amount           = cart_item.amount
      @order_detail.making_status    = 0
      @order_detail.save
    end
    current_customer.cart_items.destroy_all
    redirect_to thanks_orders_path
  end

  def index
    @orders = current_customer.orders.page(params[:page]).order(id: "desc").per(5)
  end

  def show
    @orders        = Order.find(params[:id])
    @shipping_cost = 500
  end

  private
  
  def order_params
    params.require(:order)
    .permit(:customer_id,
            :zip_code,
            :shipping_address,
            :shipping_name,
            :shipping_cost,
            :payment_method,
            :payment)
  end

  def order_detail_params
    params.require(:order_detail)
    .permit(:order_id,
            :item_id,
            :order_price,
            :amount,
            :making_status)
  end
end
