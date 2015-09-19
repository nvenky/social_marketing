# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

influencers = Influencer.create([
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
  {
    first_name: "John",
    last_name: "Doe",
    facebook_followers: 5,
    twitter_followers: 5,
    youtube_followers: 5,
    instagram_followers: 5,
  },
  {
    first_name: "Foo",
    last_name: "Bar",
    facebook_followers: 10,
    twitter_followers: 10,
    youtube_followers: 10,
    instagram_followers: 10,
  },
])


User.create!([
  {
    email: 'john@doe.com',
    password: 'johnjohn',
    password_confirmation: 'johnjohn',
    usertype: 'influencer',
  },
  {
    email: 'telstra@you.com',
    password: 'telstrayou',
    password_confirmation: 'telstrayou',
    usertype: 'advertiser',
  },
])

Advertiser.create!([
    { 
        company_name: "Nike", 
        contact_person: "venky@nike.com", 
        website: "www.nike.com"
    },
    {
        company_name: "Woolworths", 
        contact_person: "abc@woolies.com", 
        website: "www.woolies.com"
    }])

Campaign.create!([
    {
        advertiser: Advertiser.where(company_name: 'Nike').first,
        price: 300, 
        description: "Womens Sports shoe", 
        industry: "Health"
    }])
