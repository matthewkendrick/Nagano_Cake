class Public::OrdersController < ApplicationController
  def new
    @order = Order.find(params[:id])
  end

  def log
  end

  def thanks
    @cart_items           = current_customer.cart_items
    @order                = Order.new(order.params)
    @order.customer_id    = current_customer.id
    @order.shipping_cost  = 500
    @order.total_price    = @cart_items.inject(order.shipping_cost) { |sum, item| sum + item.subtotal }
   if params[:order][:select_address] == "0"
     @order.zip_code          = current_customer.postal_code
     @order.shipping_address  = current_customer.address
     @order.shipping_name     = current_customer.first_name + current_customer.last_name
   elsif params[:order][:select_address] == "1"
     address = Address.find(params[:order][:address_id])
     @order.shipping_address  = address.address
     @order.zip_code          = address.postal_code
     @order.shipping_name     = address.name
   end
  end

  def create
    @order = Order.new(session[:order])
    @order.save
    current_customer.card_items.each do |cart_item|
      order_detail                  = OrderDetail.new(order_id:@order.id)
      order_detail.item_id          = cart_item.item.id
      order_detail.count            = cart_item.amount
      order_detail.with_tax_price   = (cart_item.item.price * 1.1).floor
      order_detail.save
    end
    session[:order] = nil
    current_customer.cart_items.destroy_all
    redirect_to comlplete_path 
  end

  def index
    @orders = current_customer.orders.page(params[:page]).order(id: "desc").per(5)
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  
  def order_params
    params.require(:order).permit(:payment_method, :shipping_address, :zip_code, :shipping_name, :shipping_cost, :total_price, :customer_id)
  end
end
