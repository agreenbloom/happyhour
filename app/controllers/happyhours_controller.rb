class HappyhoursController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @happy_hour = HappyHour.new
  end

  def create
    @restaurant = Restaurant.find(params["search_query"])
    HappyHour.create(
      name: params["name"],
      address: params["address"],
      city: params["city"],
      postal_code: params["postal_code"],
      image_url: params["image_url"],
      yelp_id: params["yelp_id"],
      )
    redirect_to new_restaurant_path(@restaurant)
  end

  def get_happy_hours
    @happy_hours = restaurant_selection(params[:restaurant_name], params[:restaurant_address])

    render json: {happy_hours: @happyhours}
  end

  def index
    # @happy_hours = HappyHour.all
    render json: Yelp.client.search('Toronto', { term: 'happy hour' })
  end

  def show
    @happy_hour = HappyHour.find(params[:id])
    !@happy_hour.yelp_id.nil? ? @result = Yelp.client.business(@happy_hour.yelp_id) :nil
  end


  private

  def happy_hour_selection
    @restaurants = YelpHelper::ask_for_happy_hours(restaurant_name, restaurant_address)
  end

  def happy_hour_params
    params.require(:happy_hour).permit(:name, :image, :address, :description, :category)
  end

end
