class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
  end

  def NovemberIsTheNewCool
  end

  def room
    current_user.crew? ? crew_room : packer_room
  end

  private

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
