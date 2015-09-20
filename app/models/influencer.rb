class Influencer < ActiveRecord::Base
  has_many :campaign_influencers
  has_many :campaigns, through: :campaign_influencers
  belongs_to :user
end
