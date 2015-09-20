# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fabricator(:influencer) do
    first_name { Faker::Internet.user_name }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    facebook_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    twitter_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    youtube_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    instagram_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    user { Fabricate(:user, usertype: 'influencer')}
end

Fabricator(:user) do
    email { Faker::Internet.email }
    password { "testtest" }
    password_confirmation { |attrs| attrs[:password] }
end

Fabricator(:advertiser) do
    company_name { Faker::Company.name }
    contact_person { Faker::Internet.email }
    website { Faker::Internet.url }
    user { Fabricate(:user, usertype: 'advertiser')}
end

Fabricator(:campaign) do
    advertiser { Advertiser.take(3).sample }
    price { Faker::Number.number(4) }
    description { Faker::Company.catch_phrase }
    industry { Faker::Commerce.department }
end

100.times { Fabricate(:influencer) }

#10.times {Fabricate(:user)}

10.times {Fabricate(:advertiser)}

50.times {Fabricate(:campaign)}
