class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:restaurant_location, :restaurant_name, :photo, :photo_cache])

    # If we want to edit the user picture add form in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  # for the
  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end
end
