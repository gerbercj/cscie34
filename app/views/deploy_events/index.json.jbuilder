json.array!(@deploy_events) do |deploy_event|
  json.extract! deploy_event, :id, :deploy_id, :message, :status
  json.url deploy_event_url(deploy_event, format: :json)
end
