class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :customer_address, optional: true
  has_many :order_products
  has_many :products, through: :order_products
  
  enum payment_type: { cash: 0, credit: 1, check: 2, other: 3 }

  before_validation :generate_order_number, on: :create

  private

  def generate_order_number
    string_param = "#{self.id}#{self.customer.id}#{self.customer_addresses_id}#{self.created_at}"
    self.order_number = Digest::MD5.hexdigest string_param
  end
end
