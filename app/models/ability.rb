class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
        if user.has_role?(:admin)
            #Admins
            can :manage, :all
        else
            #Users
            can :read, :all
            can :manage, Event
            cannot :delete, Event
            can :delete, Event, user_id: user.id             
            can :manage, Diner
        end
    else
        #Guests
        can :read, :all 
    end
  end
end
