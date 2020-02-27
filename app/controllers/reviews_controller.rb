class ReviewsController < ApplicationController
  before_action :set_user, only: [:show, :create, :new]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    authorize @review
    @review.save
    if @review.save
      redirect_to profile_path, notice: 'Thank you for your review !'
    else
      render :profile
    end
  end

  def show
    @review = Review.find(params[:id])
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
