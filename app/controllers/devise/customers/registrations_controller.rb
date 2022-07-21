# frozen_string_literal: true

module Devise
  class Customers::RegistrationsController < Devise::RegistrationsController
    include AccessorConcern

    before_action :configure_sign_up_params, only: [:create]

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [
        :name, :phone
      ])
    end
  end
end
