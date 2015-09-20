class Campaign < ActiveRecord::Base
  belongs_to :advertiser
  has_many :campaign_influencers
  has_many :influencers, through: :campaign_influencers

  def shortlisted_influencers
      self.campaign_influencers.where(state: 'shortlisted').map(&:influencer)
  end
end
