class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to my_page_path
  end

  def quit
    @customer = current_customer
  end

  def out
    @customer = Customer.find(current_customer.id)
    @customer.update(is_active: false)
    # current_customer.toggle!(:is_deleted)
    reset_session
    redirect_to root_path 
  end

  private
  
  def customer_params
    params.require(:customer).permit(:first_name, :first_name_kana, :last_name, :last_name_kana, :email, :postal_code, :address, :telephone_number)
  end
end
