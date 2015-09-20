class CampaignInfluencersController < ApplicationController
    def new 
        campaign = Campaign.find(params['campaign_id'])
        campaign.campaign_influencers.create(influencer_id: params['influencer_id'], state: 'shortlisted')  
        redirect_to advertiser_campaign_path(campaign.advertiser, campaign)
    end
    
    def remove
        
    end
end
