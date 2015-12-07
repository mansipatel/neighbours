json.array!(@admin_neighbours) do |admin_neighbour|
  json.extract! admin_neighbour, :id, :user_id, :neihgbour_id
  json.url admin_neighbour_url(admin_neighbour, format: :json)
end
