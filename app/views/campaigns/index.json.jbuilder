json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :price, :description, :industry
  json.url campaign_url(campaign, format: :json)
end
