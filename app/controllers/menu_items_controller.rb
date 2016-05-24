class MenuItemsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    menus = MenuItem.where(restaurant_id: params[:restaurant_id])
    render json: (params[:page] ? menus.paginate(page: params[:page], :per_page => 5).to_json(:include => [:tags]) : menus.to_json(:include => [:tags]))
  end

  def create
    @menu_items = MenuItem.new(menu_items_params)
    if @menu_items.save
      render status: :created, json: @menu_items.to_json(:include => [:tags])
    else
      render status: :unprocessable_entity, json: { :errors => @menu_items.errors.full_messages }
    end
  end

  def show
    render json: MenuItem.find(params[:id]).to_json(:include => [:tags])
  end


private

def menu_items_params
  params.permit(:name, :description, :category, :restaurant_id, :created_at, :updated_at)
end

end
