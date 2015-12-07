json.array!(@admin_profiles) do |admin_profile|
  json.extract! admin_profile, :id, :user_id, :profile_desc
  json.url admin_profile_url(admin_profile, format: :json)
end
