class MealsController < ApplicationController
   before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def index
    @meals = Meal.all
  end

  def update
  end

  def destroy
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.save
      if @meal.save
        redirect_to meal_path(@meal)
      else
        @meal.errors.full_messages
      render :new
      end
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :location, :description, :price, :category, :quantity)
  end
end
