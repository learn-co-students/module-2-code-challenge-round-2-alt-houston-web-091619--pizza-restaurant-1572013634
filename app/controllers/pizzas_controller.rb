class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
      @restaurants = Restaurant.all
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
      flash[:error] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end

  end

  def update 
    @pizza = Pizza.find(params[:id])
    @pizza.update(pizza_params)
  end

  def edit
   @pizza = Pizza.find(params[:id])
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
