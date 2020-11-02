class ReviewsController < ApplicationController 
    # before_action :require_login

    def index
      # binding.pry
      if params[:user_id]
        @reviews = Review.where(user_id: params[:user_id])
      elsif params[:game_id]
        @reviews = Review.where(game_id: params[:game_id])
      else
        @reviews = Review.all 
      end
    end

    def new
      @review = Review.new(game_id: params[:game_id])
    end

    def create
      @review = Review.new(title: review_params[:title], body: review_params[:body], user_id: session[:user_id], game_id: params[:game_id])
      if @review.valid?
      @review.save
      redirect_to game_reviews_path
      else  
        render :new
      end
    end

    def edit
      @review = Review.find_by(id: params[:id])
      if current_user.id != @review.user_id
        redirect_to game_reviews_path
      end
    end

    def update
      @review = Review.find_by(id: params[:id])
      @review.update(review_params)
      redirect_to game_reviews_path(@review.game_id)
    end

    def destroy
      @review = Review.find_by(id: params[:id])
      path = @review.game_id
      @review.destroy
      redirect_to game_reviews_path(path)
    end

    private

    def review_params
        params.require(:review).permit(:title, :body, :game_id, :user_id)
    end
end