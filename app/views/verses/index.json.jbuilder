json.array!(@verses) do |verse|
  json.extract! verse, :id
  json.url verse_url(verse, format: :json)
end
