
class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
       devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password,
        :password_confirmation, :avatar )}

       devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password,
        :password_confirmation,
        :name, :avatar, :current_password )}
    end
end