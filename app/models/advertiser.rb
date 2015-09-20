class Advertiser < ActiveRecord::Base
  has_many :campaigns
  belongs_to :user
end
