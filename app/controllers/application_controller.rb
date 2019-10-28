class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :city, :country_select, :job,
                                      :job_title, :hourly_wage, :photo, :banner])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :city, :country_select, :job,
                                      :job_title, :hourly_wage, :photo, :banner])
  end

  def after_sign_in_path_for(resource)
    projects_path(current_user)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private
end
