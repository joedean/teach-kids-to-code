json.array!(@products) do |product|
  json.extract! product, :id, :name, :category, :description, :minimum_age, :maximum_age, :user_id
  json.url product_url(product, format: :json)
end
