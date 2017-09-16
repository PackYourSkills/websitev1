class MissionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_crew, only: [ :create, :destroy ]
  before_action :set_mission, only: [ :show, :edit, :update, :destroy]
  before_action :set_img_url, only: [ :show, :index]


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


  def set_img_url
    @constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
    #depend on mission
    @url_cover = @mission.cover_picture.nil? ? @constants["texture_url"][1]  : @mission.cover_picture.path
    @url_referent_picture = @mission.referent_picture.nil? ? @constants["texture_url"][2] : @mission.referent_picture.path
    @url_host_picture = @mission.host_picture.nil? ? @constants["texture_url"][3] : @mission.host_picture.path
    @url_hosting_place_picture = @mission.hosting_place_picture.nil? ? @constants["texture_url"][4] : @mission.hosting_place_picture.path
    #depend on crew
    @url_logo = @mission.crew.logo.nil? ? @constants["texture_url"][5]  : @mission.crew.logo.path
    @url_team_picture = @mission.crew.team_picture.nil? ? @constants["texture_url"][6]  : @mission.crew.team_picture.path
    @url_working_place_picture = @mission.crew.working_place_picture.nil? ? @constants["texture_url"][7]  : @mission.crew.working_place_picture.path
  end

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


