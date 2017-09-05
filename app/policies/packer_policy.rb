class PackerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index? ## no index for Packer
  end

  def show?
    current_user_or_admin?
  end

  def create? ## new? => create
    user.admin
  end

  def update? ## edit? => update
    current_user_or_admin?
  end

  def destroy?
    current_user_or_admin?
  end

  def room?
    current_user_or_admin?
  end

  private

  def current_user_or_admin?
    user == record.user || user.admin
  end
end

