class WcsController < ApplicationController

  def index
    #2 : implémenter l'auto completion de la barre de search :
    #5 : poser un marqueur sur l'adresse demandé ave affichage des wcs dispos.

    if params[:address] != ""
      @wcs = Wc.near(params[:address], 0.5)
    else
      @wcs = Wc.where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@wcs) do |wc, marker|
      marker.lat wc.latitude
      marker.lng wc.longitude
      marker.infowindow render_to_string(partial: "/wcs/map_box", locals: { wc: wc })
    end
  end

  def show
    @wc = Wc.find(params[:id])
    @wc_coordinates = { lat: @wc.latitude, lng: @wc.longitude }
    @reviews = []

      @hash = Gmaps4rails.build_markers(@wc) do |wc, marker|
        marker.lat wc.latitude
        marker.lng wc.longitude
      end
  end

  def new
    @wc = Wc.new
  end

  def create
  #@wc = current_user.build_wc(wc_params)
   @user = current_user
   @wc = Wc.new(wc_params)
   @wc.user = current_user
    if @wc.save
      redirect_to wc_path(@wc)
    else
      render :new
    end
  end

  def mickey
    @wc = Wc.find(params[:id])
    @wc.availability == false ? @wc.availability = true : @wc.availability = false
    @wc.save
    redirect_to profile_path(@wc)
  end

  private

  def wc_params
    params.require(:wc).permit(:name,:description,:address,:availability,:photo,:photo_cache)
  end
end
