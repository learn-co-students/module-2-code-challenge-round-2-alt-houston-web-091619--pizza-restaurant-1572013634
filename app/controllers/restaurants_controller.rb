class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    end

  def new
    @restaurant = Restaurant.new
    @pizza = Pizza.all
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
  end

  def create
    @restaurant = Restaurant.create(pizza_params)
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private
  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :search)
  end


end
