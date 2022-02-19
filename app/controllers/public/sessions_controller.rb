# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :active_customer?, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  def active_customer?
    @customer = Customer.find(email: params[:customer][:email])
    return if !@customer
    if (@customer.valid_password?(params[:customer][:password])) && (@customer.is_deleted == true)
      flash[:notice] = "アカウントが退会済みです。新規登録を行なってください。"
      redirect_to new_customer_registration_path
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
