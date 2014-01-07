json.array!(@communities) do |community|
  json.extract! community, 
  json.url community_url(community, format: :json)
end
