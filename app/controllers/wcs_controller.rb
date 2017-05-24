class WcsController < ApplicationController
  def index
    @wcs = Wc.all

    @wcs = Wc.where.not(latitude: nil, longitude: nil)

      @hash = Gmaps4rails.build_markers(@wcs) do |wc, marker|
        marker.lat wc.latitude
        marker.lng wc.longitude
        marker.infowindow render_to_string(partial: "/wcs/map_box", locals: { wc: wc })
      end
  end

  def show
    @wc = Wc.find(params[:id])
    @wc_coordinates = { lat: @wc.latitude, lng: @wc.longitude }
  end

  def new
    @wc = Wc.new
  end

  def create
    @wc = Wc.new(wc_params)
    if @wc.save
      redirect_to wcs_path(@wc)
    else
      render :new
    end
  end

  private

  def wc_params
    params.require(:wc).permit(:name,:description,:address,:availability)
  end
end
