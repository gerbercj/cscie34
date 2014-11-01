json.array!(@deploys) do |deploy|
  json.extract! deploy, :id, :project_id, :requestor_id, :pull_request, :state, :sha, :branch
  json.url deploy_url(deploy, format: :json)
end
