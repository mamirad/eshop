json.extract! product, :id, :brand, :model, :size, :color, :pprice, :sprice, :created_at, :updated_at
json.url product_url(product, format: :json)
