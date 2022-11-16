class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # before_action :set_restaurant, only: %i[new create]

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
  end

  def update
  end
end

private

# def set_restaurant
#   @restaurant = Restaurant.find(params[:restaurant_id])
# end

def review_params
  params.require(:review).permit(:content, :rating)
end
