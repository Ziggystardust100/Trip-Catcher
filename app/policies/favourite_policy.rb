class FavouritePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
   def create?
    record.catcher == user
   end

   def destroy?
    record.catcher == user
   end
end
