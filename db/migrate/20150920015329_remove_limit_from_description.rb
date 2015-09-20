class RemoveLimitFromDescription < ActiveRecord::Migration
  def change
    change_column :campaigns, :description, :string, :limit => nil
    change_column :influencers, :description, :string, :limit => nil
  end
end
