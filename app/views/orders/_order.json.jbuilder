json.extract! order, :id, :order_number, :customer_id, :primary_shipping_address_id, :payment_type, :total_order_value, :created_at, :updated_at
json.url order_url(order, format: :json)
