class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # selection of the mission
    @missions = Mission.all
  end

  def new
  end

  def create
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def edit
  end

  private

  def mission_params
    params.require(:mission).permit(:title, :context, :description, :duration, :skill, :material,
      :referent_first_name, :referent_last_name, :referent_role, :referent_phone, :referent_email,
      :description_working_place, :city_working_place_working_place, :country_working_place,
      :address_working_place, :zip_code_working_place, :closest_metro_working_place,
      :host_first_name, :host_last_name, :host_role, :host_phone,
      :description_hosting_place, :city_working_place_hosting_place, :country_hosting_place,
      :address_hosting_place, :zip_code_hosting_place, :closest_metro_hosting_place, :nb_min_ride,
      :other_comment)
  end
end

