json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :location, :contact_info, :age, :payment_mode, :user_id, :description
  json.url shop_url(shop, format: :json)
end
