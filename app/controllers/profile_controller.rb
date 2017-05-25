class ProfileController < ApplicationController
  before_action :set_profile, only: [:update, :destroy]
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def show
    @profile = current_user.profile
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile.destroy
    redirect_to tasks_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :photo, :photo_cache)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
