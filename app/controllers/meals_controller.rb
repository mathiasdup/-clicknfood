class MealsController < ApplicationController
   before_action :set_meal, only: [:show, :edit, :update, :destroy]
   skip_before_action :authenticate_user!, only: [:index, :show]


  def show
  end

  def edit
  end

  def index
    @meals = policy_scope(Meal)
    filter
  end

  def update
  end

  def destroy
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    authorize @meal
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
    authorize @meal
  end

  def meal_params
    params.require(:meal).permit(:name, :location, :description, :price, :category, :quantity, :photo)
  end

  def filter
    @meals = @meals.where(location: params[:location]) if params[:location].present?
    @meals = @meals.where(category: params[:category]) if params[:category].present?
  end
end
