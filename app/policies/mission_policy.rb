class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create? ## new? => create
    admin? || user.crew?
  end

  def update?
    case record.status
      when 'online', 'draft', 'suspended'
        concerned_user_or_admin?
      when 'canceled', 'closed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def suspend?
    case record.status
      when 'online'
        concerned_user_or_admin?
      when 'draft', 'canceled', 'suspended', 'closed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def cancel?
    case record.status
      when 'online'
        concerned_user_or_admin?
      when 'draft', 'canceled', 'suspended', 'closed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def close?
    case record.status
      when 'online'
        concerned_user_or_admin?
      when 'draft', 'canceled', 'suspended', 'closed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def destroy?
    case record.status
      when 'draft'
        concerned_user_or_admin?
      when 'online', 'canceled', 'suspended', 'closed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  private

  def concerned_user_or_admin?
    user == record.crew.user || user.admin
  end

  def admin?
    user.admin
  end
end
