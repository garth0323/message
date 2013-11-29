class ApplicationController < ActionController::Base


  def forem_user
    current_user
  end
  helper_method :forem_user


  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
     devise_parameter_sanitizer.for(:account_update) << :name
   end
end
