class AddAdvertiserToCampaign < ActiveRecord::Migration
  def change
    add_reference :campaigns, :advertiser, index: true, foreign_key: true
  end
end
