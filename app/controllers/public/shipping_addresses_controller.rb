class Public::ShippingAddressesController < ApplicationController
  def index
    @shipping_addresses  = ShippingAddress.where(customer_id: current_customer.id)
    @shipping_address    = ShippingAddress.new
  end

  def create
    @shipping_address             = ShippingAddress.new(shipping_address_params)
    @shipping_address.customer_id = current_customer.id
    @shipping_address.save
    redirect_to shipping_addresses_path
  end

  def edit
    @shipping_address  = ShippingAddress.find(params[:id])
  end

  def update
    @shipping_address = ShippingAddress.find(params[:id])
    @shipping_address.update(shipping_address_params)
    redirect_to shipping_addresses_path 
  end

  def destroy
  end

  private
  
  def shipping_address_params
    params.require(:shipping_address).permit(:postal_code, :address, :name)
  end
end
