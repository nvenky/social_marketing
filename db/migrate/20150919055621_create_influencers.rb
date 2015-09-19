class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :facebook_followers
      t.integer :twitter_followers
      t.integer :youtube_followers
      t.integer :instagram_followers

      t.timestamps null: false
    end
  end
end
