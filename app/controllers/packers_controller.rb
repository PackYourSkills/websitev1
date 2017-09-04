class PackersController < ApplicationController

  before_action :set_packer, only: [ :edit, :update, :update_avatar, :show ]
  before_action :set_editable, only: [:show]

  def index
  end

  def edit
  end

  def update
    @packer.update(packer_params)
    @packer.save ? (redirect_to packer_path @packer) : (render :edit)
  end

  def show
    @editable = user_signed_in? ? (current_user == @packer.user || current_user.admin) : false
  end

private

  def set_editable
    @editable = user_signed_in? ? (current_user == @packer.user || current_user.admin) : false
  end

  def packer_params
    params.require(:packer).permit(:first_name, :last_name, :sexe, :age, :nationality,
    :story, :job, :value1, :value2, :value3, :quote, :quote_author,
    :city, :country, :address, :zip_code,
    :skype, :phone, :website, :cv_link, :facebook, :instagram, :other_link, :newsletter,
    :cover_picture, profile_pictures: [])
  end

  def set_packer
    @packer = Packer.find(params[:id])
  end
end
