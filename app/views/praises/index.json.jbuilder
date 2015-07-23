json.array!(@praises) do |praise|
  json.extract! praise, :id
  json.url praise_url(praise, format: :json)
end
