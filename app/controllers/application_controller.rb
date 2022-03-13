class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,
                                                       :first_name_kana,
                                                       :last_name,
                                                       :last_name_kana,
                                                       :postal_code,
                                                       :address,
                                                       :email,
                                                       :telephone_number,
                                                       ])
  end
end