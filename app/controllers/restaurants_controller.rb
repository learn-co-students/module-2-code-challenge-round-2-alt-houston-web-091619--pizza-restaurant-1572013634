class RestaurantsController < ApplicationController
  before_action :el_restaurante, only:[:edit, :show, :update, :delete]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def el_restaurante
    @restaurant = Restaurant.find(params[:id])
  end
end
