json.array!(@admin_users) do |admin_user|
  json.extract! admin_user, :id, :username, :email, :password, :first_name, :last_name, :creation_date, :last_login_time, :hood_id, :block_id, :phone_num
  json.url admin_user_url(admin_user, format: :json)
end
