class WcsController < ApplicationController
  def index
    @wcs = Wc.all
  end

  def show
    @wc = Wc.find(params[:id])
  end

  def new
    @wc = Wc.new
  end

  def create
    @user = User.new(params[:id])
    @wc = Wc.new(wc_params)
    if @wc.save
      redirect_to wc_path(@wc)
    else
      render :new
    end
  end

  private

  def wc_params
    params.require(:wc).permit(:name,:description,:address,:availability)
  end
end
