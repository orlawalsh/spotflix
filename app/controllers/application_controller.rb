class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :title])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password_confirmation, :current_password,
  		:title, :description, :itunes, :amazon, :playstore])
  end
end
