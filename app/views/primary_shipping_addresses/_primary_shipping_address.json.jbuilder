json.extract! primary_shipping_address, :id, :street, :number, :city, :state, :zip_code, :country, :created_at, :updated_at
json.url primary_shipping_address_url(primary_shipping_address, format: :json)
