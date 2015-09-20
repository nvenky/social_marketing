class RemoveLimitForFollowers < ActiveRecord::Migration
  def change
    change_column :influencers, :facebook_followers, :integer, :limit => nil
    change_column :influencers, :twitter_followers, :integer, :limit => nil
    change_column :influencers, :youtube_followers, :integer, :limit => nil
    change_column :influencers, :instagram_followers, :integer, :limit => nil
    change_column :influencers, :description, :string, :limit => nil
  end
end
