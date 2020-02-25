class OrdersController < ApplicationController
before_action :set_order, only: [:show]

  def new
    @order = Order.new
    authorize @order
  end

  def create

    @order = Order.new
    @order.meal_id = params[:meal_id]
    @order.user_id = current_user.id
    @order.user = current_user
    authorize @order
    @order.save
      if @order.save
        redirect_to order_path(@order)
      else
        @order.errors.full_messages
      render :new
      end
  end

  def show
  end

  private

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def order_params
    params.require(:order).permit(:meal_id, :user_id, :order)
  end

end
