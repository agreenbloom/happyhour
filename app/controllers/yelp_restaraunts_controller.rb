class YelpRestarauntsController < ApplicationController

  def get
    @happy_hour = HappyHour.find(params[:id])
    params = {term: 'Happy Hour', limit: 20}
    local ={cc: 'CA', lang: 'eng'}
    coordinates = {latitude: @HappyHour.latitude, longitude: HappyHour.longitude}
    @results = Yelp.client.search_by_coordinates(coordinates, params, local)
  end

  def post
    @happy_hour = HappyHour.find(params[:id])
    @happy_hour.yelp_id = [params[:yelp_id]
    @happy_hour.save
    redirect_to '/happy_hour'
  end
end
