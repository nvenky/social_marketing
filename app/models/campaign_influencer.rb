class CampaignInfluencer < ActiveRecord::Base
    self.table_name = 'campaigns_influencers'
    belongs_to :advertiser
    belongs_to :influencer
end
