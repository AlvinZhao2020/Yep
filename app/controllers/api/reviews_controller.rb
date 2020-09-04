class Api::ReviewsController < ApplicationController
    before_action :require_login, only:[:create,:edit,:delete]
    def create
        @review = Review.new(review_params)
        @review.author_id = current_user.id
        if @review.save
            render :show
        else
            render json: @review.errors.full_messages,status: 422
    end

    def destroy
        @review = Review.find(params[:id])
        if( @review.author_id == current_user.id)               
            @review.destroy
        end
    end

    def show
        @review = Review.find(params[:id])
    end

    def index
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
        render :show
        else
        render json: @review.errors.full_messages, status: 422
        end
    end

    def review_params
        params.require(:review).permit(:body, :rating, :biz_id)
    end
end
