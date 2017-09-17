class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_crew, only: [ :create, :destroy ]
  before_action :set_mission, only: [ :show, :edit, :update, :destroy]

  def index
    # selection of the mission
    @all_missions = policy_scope(Mission)
    @public_missions = @all_missions.where(status: 'online')
  end

  def new
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = @crew.missions.build(mission_params)
    params[:commit] == 'Publish' ? (@mission.status = 'online') : (@mission.status = 'draft')
    authorize @mission
    @mission.save ? (redirect_to mission_path @mission) : (render :new)
  end

  def show
    @mission = Mission.find(params[:id])

    @addresses = [@mission, @mission.crew]

    @hash = Gmaps4rails.build_markers(@addresses) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def edit
  end

  def update
    params[:commit] == 'Publish' ? (@mission.status = 'online') : (@mission.status = 'draft')
    @mission.update(mission_params) ? (redirect_to mission_path @mission) : (render :edit)
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def set_crew
    @crew = Crew.find(current_user.crew)
  end

  def mission_params
    params.require(:mission).permit(:title, :context, :description, :duration, :skill, :material,
    :referent_first_name, :referent_last_name, :referent_role, :referent_phone, :referent_email,
    :host_first_name, :host_last_name, :host_role, :host_phone,
    :description_hosting_place, :hosting_place_picture, :city, :country, :address, :zip_code,
    :closest_metro_hosting_place, :nb_min_ride, :other_comment, :status,
    :latitude, :longitude, :cover_picture, :referent_picture, :host_picture)
  end
end


