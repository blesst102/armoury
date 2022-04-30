json.extract! shipment, :id, :company, :container_name, :container_description, :departure, :arrival, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
