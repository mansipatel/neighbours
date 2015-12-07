json.array!(@admin_neighbourhoods) do |admin_neighbourhood|
  json.extract! admin_neighbourhood, :id, :hood_address, :city, :state, :zip, :hood_description
  json.url admin_neighbourhood_url(admin_neighbourhood, format: :json)
end
