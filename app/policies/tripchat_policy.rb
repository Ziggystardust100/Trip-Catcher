class TripchatPolicy < ApplicationPolicy

    def create?
      true
    end

    def destroy?
      record.catcher == user
    end

end
