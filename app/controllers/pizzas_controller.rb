class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
    end

  def new
    @pizza = Pizza.new
    @restaurant = Restaurant.all
  end

  def edit
    @pizza = Pizza.find(params[:id])
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
        if @pizza.valid?
          @pizza.save
          redirecto_to @Pizza
        end

  end

  def update
    @pizza = Pizza.find(params[:id])
    @pizza.update(pizza_params)
    redirect_to pizza_path(@pizza)
  end

  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end

  private
  def pizza_params
  params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end


end
