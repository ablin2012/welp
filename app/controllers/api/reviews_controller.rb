class Api::ReviewsController < ApplicationController
    before_action :require_logged_in

    def create
      @review = Review.new(review_params)
      @review.user_id = current_user.id
      @review.business_id = params[:business_id]
  
      if @review.save
        render :show
      else
        render json: @review, status: 422
      end
    end

    def show
      @review = Review.find_by(id: params[:id])
    end

    def update
      @review = Review.find_by(id: params[:id])
      if @review.update(review_params)
        render :show
      else
        render json: @review.errors.full_messages, status: 422
      end
    end

    def destroy
      @review = Review.find_by(id: params[:id])
      @review.destroy

      render :show
    end
  
    private
  
    def review_params
      params.require(:review).permit(:rating, :body)
    end
end
