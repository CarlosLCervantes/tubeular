json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :title, :description, :user_id, :votes
  json.url suggestion_url(suggestion, format: :json)
end
