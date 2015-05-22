json.array!(@furnitures) do |furniture|
  json.extract! furniture, :id, :shop_id, :title, :description, :image, :price, :stock, :category, :delivery
  json.url furniture_url(furniture, format: :json)
end
