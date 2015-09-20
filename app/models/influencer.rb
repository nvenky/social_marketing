class Influencer < ActiveRecord::Base
  has_and_belongs_to_many :campaigns
  belongs_to :user
end
