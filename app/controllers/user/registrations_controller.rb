class User::RegistrationsController < Devise::RegistrationsController
    before_filter :configure_permitted_parameters, only: [:update, :create]
    
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :current_password])
    end
    
end