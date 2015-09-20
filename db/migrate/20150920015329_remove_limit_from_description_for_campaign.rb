class RemoveLimitFromDescriptionForCampaign < ActiveRecord::Migration
  def change
    change_column :campaigns, :description, :string, :limit => nil
  end
end
