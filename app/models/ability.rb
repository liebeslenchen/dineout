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
            can :manage, Diner
            #can :manage, Event, user_id: user.id
        end
    else
        #Guests
        can :read, :all 
    end
  end
end
