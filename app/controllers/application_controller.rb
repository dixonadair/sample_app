class ApplicationController < ActionController::Base
  # Below added by me
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Above added by me

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Below added by me
  protected

  # def configure_permitted_parameters
  # 	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation) }
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username << :email
    devise_parameter_sanitizer.for(:account_update) << :username << :email
  end
  # Above added by me

end
