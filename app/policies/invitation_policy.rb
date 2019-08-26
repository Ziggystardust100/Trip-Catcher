class InvitationPolicy < ApplicationPolicy
 def show?
  true
 end

 def create?
    true
  end

 def destroy?
      record.catcher == user

 end

 def update?
  record.catcher == user
 end
end
