class UsersController < ApplicationController
 before_action :set_review, only: [:create, :new]
  def profile
    @user = current_user
    authorize @user
    @review = Review.new
  end
 private

 def set_review
  @review = Review.find(params[:user_id])
 end

end
