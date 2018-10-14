json.extract! sale, :id, :product_id, :customer_id, :discount, :paid, :instalment, :status, :left, :created_at, :updated_at
json.url sale_url(sale, format: :json)
