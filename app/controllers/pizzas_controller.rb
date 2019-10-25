class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
      @pizza.save
      redirect_to pizza_path(@pizza)
    else 
      flash[:errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  def new 
    @pizza = Pizza.new
    @restaurants = Restaurant.all

  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end


end
