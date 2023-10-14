json.array!(@resource_names) do |resource_name|
  json.extract! resource_name, :id, :product_name, :product_id
  json.url resource_name_url(resource_name, format: :json)
end
