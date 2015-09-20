class AddStateToCampaignsInfluencersTable < ActiveRecord::Migration
  def change
    add_column :campaigns_influencers, :state, :string
  end
end
