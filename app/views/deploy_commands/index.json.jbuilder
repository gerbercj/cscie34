json.array!(@deploy_commands) do |deploy_command|
  json.extract! deploy_command, :id, :deploy_id, :command, :parameters, :result
  json.url deploy_command_url(deploy_command, format: :json)
end
