class TripPolicy < ApplicationPolicy
 class Scope < Scope
    def resolve
      scope.all
    end
 end

  def update?
    record.catcher == user && record.status == "Open"
  end

  def show?
  true
  end

  def create?
    true
  end

  def destroy?
    record.catcher == user
  end
end
