class MenuItemsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    render json: MenuItem.where(restaurant_id: params[:restaurant_id])
  end

  def create
    @menu_items = MenuItem.new(menu_items_params)
    if @menu_items.save
      render status: :created, json: @menu_items
    else
      render status: :unprocessable_entity, json: { :errors => @menu_items.errors.full_messages }
    end
  end

  def show
    render json: MenuItem.find(params[:id])
  end


private

def menu_items_params
  params.permit(:name, :description, :category, :restaurant_id, :created_at, :updated_at)
end

end
