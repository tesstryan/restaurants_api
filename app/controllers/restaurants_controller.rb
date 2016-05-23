class RestaurantsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    render json: (params[:page]? Restaurant.paginate(page: params[:page], :per_page => 20) : Restaurant.all)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render status: :created, json: @restaurant
    else
      render status: :unprocessable_entity, json: { :errors => @restaurant.errors.full_messages }
    end
  end

  def show
    render json: Restaurant.find(params[:id])
  end


private

def restaurant_params
  params.permit(:name, :description, :rating, :address, :created_at, :updated_at)
end

end
