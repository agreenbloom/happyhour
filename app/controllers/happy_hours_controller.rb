class HappyHoursController < ApplicationController

  def index
    @happy_hours = HappyHour.all
  end

  def new
    @happy_hour = HappyHour.new
  end

  def create
    happy_hour = HappyHour.new
  end

  def show
    @happy_hour = HappyHour.find(params[:id])
    !@happy_hour.yelp_id.nil? ? @result = Yelp.client.business(@happy_hour.yelp_id) :nil
  end

  private
  def happy_hour_params
    params.require(:happy_hour).permit(:name, :image, :address, :description, :category)
  end
end
