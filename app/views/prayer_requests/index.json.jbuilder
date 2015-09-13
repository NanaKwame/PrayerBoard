json.array!(@prayer_requests) do |prayer_request|
  json.extract! prayer_request, :id
  json.url prayer_request_url(prayer_request, format: :json)
end
