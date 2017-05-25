class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to  wc_bookings_path(@wc)
    else
      render :new
    end
  end

  # def show
  #   @review = Review.find(params[:id])
  # end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
