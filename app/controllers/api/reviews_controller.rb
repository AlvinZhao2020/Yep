class Api::ReviewsController < ApplicationController
skip_before_action :verify_authenticity_token
  def show
    @review = Review.find(params[:id])
  end

  def index
    @reviews =Review.all
  end

  def create  
    @review = Review.new(review_params)
    @review.author_id = current_user.id
    if @review.save
      render :show
    else
      render json: @review, status: :unprocessable_entity
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

  def review_params
    params.require(:review).permit(:body, :rating, :biz_id)
  end
end

