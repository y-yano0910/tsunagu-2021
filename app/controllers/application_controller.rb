class ApplicationController < ActionController::Base
  before_action :basic_auth
  # before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(
  #     :sign_up, keys: [:farm_name, :category_id, :main_product_id, :farm_characteristic, address_attributes: [:postal_code, :prefecture_id, :municipality, :house_number, :building_name, :phone_number]]
  #   )
  # end
end
