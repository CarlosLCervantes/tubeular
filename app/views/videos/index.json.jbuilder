json.array!(@videos) do |video|
  json.extract! video, 
  json.url video_url(video, format: :json)
end
