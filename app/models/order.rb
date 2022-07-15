class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :primary_shipping_address
end
