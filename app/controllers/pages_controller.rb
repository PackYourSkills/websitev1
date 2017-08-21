class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :NovemberIsTheNewCool]

  def home
  end

  def NovemberIsTheNewCool
  end
end
