json.array!(@influencers) do |influencer|
  json.extract! influencer, :id, :first_name, :last_name, :description, :facebook_followers, :twitter_followers, :youtube_followers, :instagram_followers
  json.url influencer_url(influencer, format: :json)
end
