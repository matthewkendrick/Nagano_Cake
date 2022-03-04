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
    redirect_to items_path
  end

  def quit
    @customer = current_customer
  end

  def out
    current_customer.toggle(:is_delete)
    reset_session
    redirect_to root_path
  end
end
