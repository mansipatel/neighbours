json.array!(@admin_message_recipients) do |admin_message_recipient|
  json.extract! admin_message_recipient, :id, :msg_id, :recipient_id, :recipient_type
  json.url admin_message_recipient_url(admin_message_recipient, format: :json)
end
