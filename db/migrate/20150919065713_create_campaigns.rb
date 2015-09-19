class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :price
      t.string :description
      t.string :industry

      t.timestamps null: false
    end
  end
end
