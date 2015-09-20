# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Influencer.delete_all
User.delete_all
Advertiser.delete_all
Campaign.delete_all

Fabricator(:influencer) do
    first_name { Faker::Internet.user_name }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    description { Faker::Lorem.paragraph }
    facebook_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    twitter_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    youtube_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    instagram_followers { [Faker::Number.number(5), Faker::Number.number(4)].sample }
    user { Fabricate(:user, usertype: 'influencer')}
    minimum_price { [100,500,1000, 300].sample }
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
    title { Faker::Company.catch_phrase }
    advertiser { Advertiser.take(3).sample }
    price { [Faker::Number.number(3), Faker::Number.number(4)].sample }
    industry { Faker::Commerce.department }
    description { Faker::Lorem.paragraph[0..250]}
end

Advertiser.create!({company_name: 'UMate', website: 'www.umate.com.au', contact_person: 'sam.sweeny@umate.com.au'})
Advertiser.create!({company_name: 'IB Blue Print', website: 'www.umate.com.au', contact_person: 'sam.sweeny@umate.com.au'})

100.times { Fabricate(:influencer) }

#10.times {Fabricate(:user)}

10.times {Fabricate(:advertiser)}

50.times {Fabricate(:campaign)}
