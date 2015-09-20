class AddMinimumPriceToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :minimum_price, :integer
  end
end
