json.array!(@products) do |product|
  json.extract! product, :id, :name, :cost
  json.url product_url(product, format: :json)
end
