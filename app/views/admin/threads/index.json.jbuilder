json.array!(@admin_threads) do |admin_thread|
  json.extract! admin_thread, :id, :msg_id, :thread_time, :thread_by, :thread_text
  json.url admin_thread_url(admin_thread, format: :json)
end
