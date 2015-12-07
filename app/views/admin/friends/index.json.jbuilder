json.array!(@admin_friends) do |admin_friend|
  json.extract! admin_friend, :id, :sender_id, :receiver_id, :status
  json.url admin_friend_url(admin_friend, format: :json)
end
