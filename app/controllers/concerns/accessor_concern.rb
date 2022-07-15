module AccessorConcern
  extend ActiveSupport::Concern

  included do
    before_action :check_user, except: :destroy
  end

  protected

  def check_user
    if current_customer
      redirect_to(customer_root_path) and return

    elsif current_admin
      redirect_to(admin_root_path) and return

    end
  end
end
