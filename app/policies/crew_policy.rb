class CrewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index? ## no index for Crew
  end

  def show? ## no show for Crew
  end

  def create? ## new? => create
    user.admin
  end

  def update? ## edit? => update
    user.admin
  end

  def destroy?
    user.admin
  end

  def room?
    current_user_or_admin?
  end

  private

  def current_user_or_admin?
    user == record.user || user.admin
  end
end

