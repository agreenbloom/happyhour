class HappyHour < ActiveRecord::Base
  has_one :yelp_restaraunts

  validates :name, :yelp_id, :url, :address, presence: true

  geocoded_by :address
  after_validation :geocode
end
