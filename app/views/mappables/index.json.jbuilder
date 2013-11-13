json.array!(@mappables) do |mappable|
  json.extract! mappable, :address, :longitude, :latitude
  json.url mappable_url(mappable, format: :json)
end
