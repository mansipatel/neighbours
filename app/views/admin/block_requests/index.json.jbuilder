json.array!(@admin_block_requests) do |admin_block_request|
  json.extract! admin_block_request, :id, :requester_id, :approver1_id, :approver2_id, :approver3_id
  json.url admin_block_request_url(admin_block_request, format: :json)
end
