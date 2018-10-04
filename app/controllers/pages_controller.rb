class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  before_action :set_constants, only: [:IAmAPacker, :IAmACrew, :room]

  def home
  end

  def NovemberIsTheNewCool
  end

  def AprilIsComing
  end

  def IAmAPacker
    @banner_url = @constants["img_banner_url"]["packer"]
  end

  def IAmACrew
    @banner_url = @constants["img_banner_url"]["crew"]
  end

  def room
    if current_user.admin
      admin_room
    else
      current_user.crew? ? crew_room : packer_room
    end
  end

  private

  def set_constants
    @constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
  end

  def admin_room
    @packers = Packer.all
    @crews = Crew.all
    @missions = Mission.all
    @public_missions = @missions.where(status: ('online'))
    @validated_missions = @missions.where(status: ('validated'))
    @draft_missions = @missions.where(status: 'draft')
  end

  def packer_room
    @packer = current_user.packer
    authorize @packer
    @banner_url = @constants["img_banner_url"]["room_packer"]
    @connections = @packer.connections.order(created_at: :desc)
    @all_draft = @connections.select { |c| c.draft? }
    @all_other = @connections.select { |c| !c.draft? }
#    @all_accepted = @connections.select { |c| c.accepted? }
#    @all_online = @connections.select { |c| c.online? }
#    @all_draft = @connections.select { |c| c.draft? }
#    @all_old = @connections.select { |c| !c.draft? && !c.online? && !c.accepted? }
  end

  def crew_room
    @crew = current_user.crew
    authorize @crew
    @mission = @crew.missions.last
    @missions = @crew.missions
    @connections = @mission.connections
    @all_online = @connections.select { |c| c.online? }
  end
end
