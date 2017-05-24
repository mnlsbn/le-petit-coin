class BookingsController < ApplicationController
  # def index
  #   @bookings =  Booking.all
  # end

  def new
    # @wc = Wc.find(params[:wc_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @wc = Wc.find(params[:wc_id])
    @booking.user = current_user
    # PENDING >> en attente de possibilité connexion user
    @booking.wc = @wc
    if @booking.save
      @wc.availability = false
      @wc.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(params[:booking])
  # end

  # private

  # def booking_params
  #   params.require(:booking).permit()
  # end
end
