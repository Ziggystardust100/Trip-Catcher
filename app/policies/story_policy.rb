class StoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.catcher == user
  end

  def create?
    true
  end

  def destroy?
    record.catcher == user
   end

  def show?
    true
  end
end
