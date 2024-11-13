class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  # restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
  # new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
  #                review DELETE /reviews/:id(.:format)                            reviews#destroy

  def create
    @review = Review.new(restaurant_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
