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
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    description { Faker::Lorem.paragraph[0..250] }
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
    advertiser { Advertiser.take(10).sample }
    price { [Faker::Number.number(3), Faker::Number.number(4)].sample }
    industry { Faker::Commerce.department }
    description { Faker::Lorem.paragraph[0..250]}
end

david = User.create!({email: 'david@ibtuition.com', password: 'testtest', password_confirmation: 'testtest', usertype: 'influencer'})
Influencer.create!({first_name: 'David', last_name: 'Gai', description: 'lorem ipsum', youtube_followers: 12127, minimum_price: 100, user: david})
sreejay = User.create!({email: 'sreejay@gmail.com', password: 'testtest', password_confirmation: 'testtest', usertype: 'influencer'})
Influencer.create!({first_name: 'Sreejay', last_name: 'Santosh', description: 'lorem ipsum', instagram_followers: 2848, minimum_price: 100, user: sreejay})

umate = User.create!({email: 'sam.sweeny@umate.com.au', password: 'testtest', password_confirmation: 'testtest', usertype: 'advertiser'})
Advertiser.create!({company_name: 'UMate', website: 'www.umate.com.au', contact_person: 'sam.sweeny@umate.com.au', user: umate})
ibblueprint = User.create!({email: 'sam.sweeny@ibblueprint.com', password: 'testtest', password_confirmation: 'testtest', usertype: 'advertiser'})
Advertiser.create!({company_name: 'IB Blue Print', website: 'ibblueprint.com', contact_person: 'sam.sweeny@ibblueprint.com/', user: ibblueprint})
nutrition = User.create!({email: 'van@realedgenutrition.com', password: 'testtest', password_confirmation: 'testtest', usertype: 'advertiser'})
Advertiser.create!({company_name: 'Real Edge Nutrition', website: 'realedgenutrition.com.au', contact_person: 'van@realedgenutrition.com', user: nutrition})


80.times { Fabricate(:influencer) }

#10.times {Fabricate(:user)}

10.times {Fabricate(:advertiser)}

50.times {Fabricate(:campaign)}
