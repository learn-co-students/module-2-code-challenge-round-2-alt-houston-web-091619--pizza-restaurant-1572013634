class PizzasController < ApplicationController
  before_action :la_pizza, only:[:edit, :show, :update, :destroy]
  
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza= Pizza.new
    @restaurants = Restaurant.all
  end
  
  def create
    @pizza = Pizza.new(pizza_params)

      if @pizza.valid? 
          @pizza.save
          redirect_to @pizza
      else
        flash[:error] = @pizza.errors.full_messages
        redirect_to new_pizza_path
      end
  end

  def edit
    @restaurants = Restaurant.all
  end
  
  def update
    @pizza.update(pizza_params)  
  end
  
  def show
  end

  def destroy
    @pizza.destroy
    redirect_to pizzas_path
  end

  

  private

  def la_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
