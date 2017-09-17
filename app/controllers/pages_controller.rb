class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
  end

  def NovemberIsTheNewCool
  end

  def room
    if current_user.admin
      admin_room
    else
      current_user.crew? ? crew_room : packer_room
    end
  end

  private

  def admin_room
    @packers = Packer.all
    @crews = Crew.all
    @missions = Mission.all
  end

  def packer_room
    @packer = current_user.packer
    authorize @packer
  end

  def crew_room
    @crew = current_user.crew
    authorize @crew
    @missions = @crew.missions.order(created_at: :desc)
  end
end
