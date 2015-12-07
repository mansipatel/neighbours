json.array!(@admin_messages) do |admin_message|
  json.extract! admin_message, :id, :msg_text, :msg_by, :msg_time, :msg_title
  json.url admin_message_url(admin_message, format: :json)
end
