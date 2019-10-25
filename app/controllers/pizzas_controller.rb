class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
    
  end

  def new 
    @pizza = Pizza.new
    @restuarants = Restuarant.all
  end

  def create 
    # byebug
    @pizza = Pizza.create(pizza_params)
    redirect_to new_pizza_path
end 
  

private

def pizza_params
  params.require(:pizza).permit(:name, :ingredients, restuarant_id)e
end 
  
end
