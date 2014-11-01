json.array!(@deploy_queries) do |deploy_query|
  json.extract! deploy_query, :id, :deploy_id, :query, :expected_result, :actual_result
  json.url deploy_query_url(deploy_query, format: :json)
end
