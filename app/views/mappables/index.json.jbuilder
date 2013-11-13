json.array!(@mappables) do |mappable|
  json.extract! mappable, :address
  json.url mappable_url(mappable, format: :json)
end
