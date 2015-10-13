class HappyHour < ActiveRecord::Base
  has_one :yelp_restaraunts

  geocoded_by :address
  after_validation :geocode
end
