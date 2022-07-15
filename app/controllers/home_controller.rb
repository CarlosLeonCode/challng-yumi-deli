class HomeController < ApplicationController
  layout 'admin', only: [:admin]
  layout 'customer', only: [:customer]

  def index; end

  def admin; end

  def customer
    @orders = current_customer.orders
  end
end
