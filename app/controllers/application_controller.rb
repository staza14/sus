class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar, :car_hours, :bus_hours, :train_hours, :cycle_hours, :foot_hours, :flight_long_hours, :flight_short_hours, :food, :waste, :source, :lights, :clothing, :temperature, :bath, :long_shower, :short_shower])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name , :avatar, :car_hours, :bus_hours, :train_hours, :cycle_hours, :foot_hours, :flight_long_hours, :flight_short_hours, :food, :waste, :source, :lights, :clothing, :temperature, :bath, :long_shower, :short_shower])
  end

  def after_sign_up_path_for(resource)
    results_path
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
