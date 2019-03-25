json.extract! order, :id, :accessories_ordered, :price_total, :created_at, :updated_at
json.url order_url(order, format: :json)
