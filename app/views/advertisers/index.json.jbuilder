json.array!(@advertisers) do |advertiser|
  json.extract! advertiser, :id, :company_name, :contact_person, :website
  json.url advertiser_url(advertiser, format: :json)
end
