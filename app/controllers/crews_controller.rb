class CrewsController < ApplicationController
  before_action :set_crew, only: [ :edit, :update, :show, :destroy ]
  before_action :set_editable, only: [ :show ]

  def index
  end

  def edit
  end

  def update
    @crew.update(crew_params)
    @crew.save ? (redirect_to crew_path(@crew)) : (render :edit)
  end

  def show
  end

  private

  def set_editable
    @editable = user_signed_in? ? (current_user == @crew.user || current_user.admin) : false
  end

  def set_crew
    @crew = Crew.find(params[:id])
  end

  def crew_params
    params.require(:crew).permit(:name, :mission, :description, :creation_date,
      :nb_collaborators, :average_age, :percentage_women, :team_description, :percentage_english,
      :value1, :value2, :value3, :quote, :quote_author,
      :city, :country, :address, :zip_code, :phone, :skype,
      :twitter, :facebook, :instagram, :website, :newsletter)
  end
end
