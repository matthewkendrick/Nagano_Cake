class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.page(params[:page]).order(id: "desc").per(8)
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:notice] = "注文ステータスを更新しました"
    end
    order.save
    redirect_to admin_order_path(order.id)
  end

  private
  
  def order_params
    params.require(:order).permit(:order_status)
  end
end
