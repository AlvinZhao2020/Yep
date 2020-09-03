class Api::ReviewsController < ApplicationController
    before_action :require_login, only:[:create,:edit,:delete]
    def create
        @review = Review.new(review_params)
        @review.author_id = current_user.id
        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
    end

    def delete
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

    def edit
    end

    def review_params
        params.require(:review).permit(:body, :rating, :biz_id)
    end
end
