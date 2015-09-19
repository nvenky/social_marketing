class Campaign < ActiveRecord::Base
  belongs_to :advertiser
  has_and_belongs_to_many :influencers
end
