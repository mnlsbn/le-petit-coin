class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  # def new
  #   @booking = Booking.find(params[:booking_id])
  #   @review = Review.new
  # end

  def create
    @user = current_user
    @review = Review.new(review_params)
    # @review.user = current_user
    @review.booking_id = params[:booking_id].to_i
    @booking = Booking.find(params[:booking_id].to_i)

    if @review.save
      redirect_to  wc_path(@booking.wc_id)
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
