json.extract! customer, :id, :name, :phone, :primary_shipping_address_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
