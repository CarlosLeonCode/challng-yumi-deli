class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :primary_shipping_address
  has_many :order_products

  validates_presence_of :order_number, :payment_type, :total_order_value
  
  enum payment_type: { cash: 0, credit: 1, check: 2, other: 3 }

  before_validation :generate_order_number, on: :create

  private

  def generate_order_number
    string_param = "#{self.id}#{self.customer.id}#{self.primary_shipping_address.id}#{self.created_at}"
    self.order_number = Digest::MD5.hexdigest string_param
  end
end
