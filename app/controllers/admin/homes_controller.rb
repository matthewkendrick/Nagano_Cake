class Admin::HomesController < ApplicationController
  def top
    @items = Item.all
    @orders = Order.all
  end
end
